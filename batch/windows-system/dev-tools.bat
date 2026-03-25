@echo off

:: THIS BATCH FILE OPENS LINKS TO DOWNLOAD COMMON DEV TOOLS. USE CASE: SETTING UP DEV TOOLS ON A NEW DEVICE. COMMENT OUT SOFTWARE THAT ISN'T DESIRED FOR BEST RESULTS. -NR

:: LINK TO DOWNLOAD VISUAL STUDIO CODE 
start "" "https://code.visualstudio.com/Download"

:: LINK TO DOWNLOAD GIT
start "" "https://git-scm.com/install/"

:: LINK TO DOWNLOAD NODE.JS
start "" "https://nodejs.org/en/download"

:: LINK TO DOWNLOAD DOCKER
start "" "https://docs.docker.com/get-started/get-docker/"

:: LINK TO DOWNLOAD PYTHON
start "" "https://www.python.org/downloads/"

:: LINK TO DOWNLOAD GO LANG
start "" "https://go.dev/doc/install"

exit