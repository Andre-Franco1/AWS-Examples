
## Create out bucket
```sh
aws s3 mb s3://prefixes-fun-af-0202
```

## Create out folder
```sh
aws s3api put-object --bucket="prefixes-fun-af-0202" --key="hello/"
```

## Create many folders
```sh
aws s3api put-object --bucket="prefixes-fun-af-0202" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Vestibulum/vehicula/gravida/feugiat/Ut/ipsum/purus/ullamcorper/iaculis/consequat/in/pellentesque/sit/amet/dolor/Vivamus/non/arcu/vitae/lacus/interdum/dapibus/Nulla/dapibus/ipsum/at/erat/aliquet/pulvinar/Nam/pretium/maximus/dolor/at/rutrum/odio/Etiam/in/dui/in/tellus/iaculis/vehicula/eget/non/urna/Integer/eleifend/scelerisque/sollicitudin/Duis/finibus/posuere/sem/nec/aliquet/ante/hendrerit/eget/Mauris/lectus/neque/condimentum/ut/eleifend/at/semper/eget/dolor/Nulla/aliquet/cursus/massa/eu/accumsan/leo/tristique/faucibus/Proin/quis/sollicitudin/diam/Aenean/vitae/posuere/metus/ac/semper/diam/In/hac/habitasse/platea/dictumst/Vivamus/rutrum/nulla/eget/fringilla/consectetur/tortor/lectus/eleifend/turpis/et/fringilla/nunc/orci/non/sem/Sed/a/elit/sed/tortor/varius/interdum/Praesent/efficitur/quam/nibh/vel/egestas/ante/eleifend/vel/Aenean/enim/eros/porta/id/ultrices/non/vestibulum/ut/ex/Fusce/a/odio/sit/amet/libero/maximus/porttitor/wra/dsf/dfs/gf/dhg/gfh/jgidngii/"
```

## Try and break the 1024 limit

```sh
aws s3api put-object --bucket="prefixes-fun-af-0202" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Vestibulum/vehicula/gravida/feugiat/Ut/ipsum/purus/ullamcorper/iaculis/consequat/in/pellentesque/sit/amet/dolor/Vivamus/non/arcu/vitae/lacus/interdum/dapibus/Nulla/dapibus/ipsum/at/erat/aliquet/pulvinar/Nam/pretium/maximus/dolor/at/rutrum/odio/Etiam/in/dui/in/tellus/iaculis/vehicula/eget/non/urna/Integer/eleifend/scelerisque/sollicitudin/Duis/finibus/posuere/sem/nec/aliquet/ante/hendrerit/eget/Mauris/lectus/neque/condimentum/ut/eleifend/at/semper/eget/dolor/Nulla/aliquet/cursus/massa/eu/accumsan/leo/tristique/faucibus/Proin/quis/sollicitudin/diam/Aenean/vitae/posuere/metus/ac/semper/diam/In/hac/habitasse/platea/dictumst/Vivamus/rutrum/nulla/eget/fringilla/consectetur/tortor/lectus/eleifend/turpis/et/fringilla/nunc/orci/non/sem/Sed/a/elit/sed/tortor/varius/interdum/Praesent/efficitur/quam/nibh/vel/egestas/ante/eleifend/vel/Aenean/enim/eros/porta/id/ultrices/non/vestibulum/ut/ex/Fusce/a/odio/sit/amet/libero/maximus/porttitor/wra/dsf/dfs/gf/dhg/gfh/jgidngii/hello.txt" --body"hello.txt" 
```