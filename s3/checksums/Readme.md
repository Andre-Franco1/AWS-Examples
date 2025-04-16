## Create a new s3 bucket

```md
aws s3 mb s3://checksums-examples-ab-233284262
```

## Create a file that we will do a checksum on

```
echo "Hello World" > myfile.txt
```

## Get a checksum of a file for md5

```md
md5sum myfile.txt
# e59ff97941044f85df5297e1c302d260  myfile.txt
```


## Upload out s3 file and look at its etag

```
aws s3 cp myfile.txt s3://checksums-examples-ab-233284262
aws s3api head-object --bucket checksums-examples-ab-233284262 --key myfile.txt
# "ETag": "\"e59ff97941044f85df5297e1c302d260\"",
```


## Lets upload a file with a different checksum

```sh
ruby sha1_checksum.rb
```

```sh
aws s3api put-object \
--bucket checksums-examples-ab-233284262 \
--key myfilesha1.txt \
--body myfile.txt \
--checksum-algorithm="SHA1" \
--checksum-sha1="648a6a6ffffdaa0badb23b8baf90b6168dd16b3a"
# the precalculated value for the checksum is different from the value that aws calculates, so there is something wrong in this process of getting the value
```