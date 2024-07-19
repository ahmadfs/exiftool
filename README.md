# Dockerized version of exiftool
------------------------------
A docker version of exiftool to copy and rename files from a source directory to a destination directory defined as variables in the docker-compose.yml file. This would create directory path of:

```<YEAR>/<MONTH>/<DAY>/<DEVICE*>/<YY-MM-DD_num.ext>```

```* If DEVICE is not known, it would skip the directory creation.```

You can use the provided example ```docker-compose.yml``` file to get started. 

More details [here](https://www.ahmedsiddiqui.net/2024/07/19/managing-millions-of-pictures/). 
