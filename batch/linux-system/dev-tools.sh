#!/bin/bash

# THIS SCRIPT OPENS LINKS TO DOWNLOAD COMMON DEV TOOLS. USE CASE: SETTING UP DEV TOOLS ON A NEW DEVICE. COMMENT OUT SOFTWARE THAT ISN'T DESIRED FOR BEST RESULTS. -NR

# LINK TO DOWNLOAD VISUAL STUDIO CODE
xdg-open "https://code.visualstudio.com/Download"

# LINK TO DOWNLOAD GIT
xdg-open "https://git-scm.com/install/"

# LINK TO DOWNLOAD NODE.JS
xdg-open "https://nodejs.org/en/download"

# LINK TO DOWNLOAD DOCKER
xdg-open "https://docs.docker.com/get-started/get-docker/"

# LINK TO DOWNLOAD PYTHON
xdg-open "https://www.python.org/downloads/"

# LINK TO DOWNLOAD GO LANG
xdg-open "https://go.dev/doc/install"

# To run: 
chmod +x devtools.sh   # make it executable (one time only)
./dev-tools.sh          # run it