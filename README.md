# iSentry LabKey

## Build
To create a singularity image run:
```
    ./build.sh --writable
```

## Starting and Stopping an Instance
* Start: 
```
    singularity instance.start %IMAGE% %INSTANCE%"
```
* Stop:
```
    singularity instance.stop %INSTANCE%"
```

## TODO
* Overlay Postgres Database and LabKey Data to work with a readonly image
* Add optinal requirements of LabKey
* Configure SMTP


