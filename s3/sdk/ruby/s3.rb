# Required libraries
require 'aws-sdk-s3'      # AWS SDK for interacting with S3
require 'pry'             # Debugging tool (optional, used for breakpoints)
require 'securerandom'    # Library for generating UUIDs

# Get bucket name from environment variable
bucket_name = ENV['BUCKET_NAME']
region = 'us-east-2'  # Set the region for the S3 bucket

# Initialize an S3 client using default credentials and region
client = Aws::S3::Client.new

# Create a new S3 bucket
resp = client.create_bucket({
  bucket: bucket_name,
  create_bucket_configuration: {
    location_constraint: region
  }
})
# binding.pry

# Determine a random number of files to generate and upload (between 1 and 6)
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"

# Generate, write, and upload each file
number_of_files.times.each do |i|
  puts "i: #{i}"

  # Generate a file name and define its path
  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  # Write a random UUID string to the file
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Reopen the file and upload it to S3
  File.open(output_path, 'rb') do |file|
    client.put_object(
      bucket: bucket_name,
      key: filename,
      body: file
    )
  end
end