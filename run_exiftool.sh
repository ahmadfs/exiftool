# EXIFTOOL SHELL SCRIPT
#!/bin/bash
# EXIFTOOl Documentation: https://exiftool.org/exiftool_pod.html
# You can adjust the output directory and filename structure below

exiftool -r -P -o . \
'-FileName<$FileModifyDate/${FileModifyDate#;DateFmt("%Y-%m-%d_%H%M%S")}_%f%-c.%e' \
'-FileName<$DateTimeOriginal/${DateTimeOriginal#;DateFmt("%Y-%m-%d_%H%M%S")}_%f%-c.%e'  \
'-FileName<$FileModifyDate/${model;}/${FileModifyDate#;DateFmt("%Y-%m-%d_%H%M%S%%-c")}.%e' \
'-FileName<$DateTimeOriginal/${model;}/${DateTimeOriginal#;DateFmt("%Y-%m-%d_%H%M%S%%-c")}.%e' \
-d '/destination/%Y/%B' /source/ >/logs/`date '+%Y%m%d_%H%M'`.log 2>&1
