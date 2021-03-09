#!/bin/bash

function printHeader() {
  echo 'clover downloader'
}

function getGitHubLatestRelease() {
  local repoURL='https://github.com/Dids/clover-builder/releases/latest'
  str="$(curl --silent "${repoURL}" )"
  v1=${str:87:11}
  echo "CloverISO version : [${v1}]"
  v2=${v1:7:4}
  echo "CloverISO version : [${v2}]"

  if [[ -z "${v1}" ]]; then
    echo -e "[ ${RED}ERROR${OFF} ]: Not Found!!!!"
    exit 1
  fi
}


function clean() {
  DIR="/Users/`users`/Desktop/clover_download"
  [[ -d "${DIR}" ]] &&  rm -rf "${DIR}"
}

function networkWarn() {
  echo -e "[ ${RED}ERROR${OFF} ]: Netword Error!!!!"
  clean
  exit 1
}

function download() {
  getGitHubLatestRelease

  WORK_DIR="/Users/`users`/Desktop/clover_download"
  [[ -d "${WORK_DIR}" ]] &&  rm -rf "${WORK_DIR}"
  mkdir -p "${WORK_DIR}" && cd "${WORK_DIR}"
  pwd

  echo
  echo '----------------------------------------------------------------------'
  echo '|Download from github.com/Dids/clover-builder/releases/latest|'
  echo '----------------------------------------------------------------------'


  local cfFileName="Clover_${v1}.pkg"
  local cfURL="https://github.com/Dids/clover-builder/releases/download/${v1}/${cfFileName}"
  curl -# -L -O "${cfURL}" || networkWarn
  echo -e "[ ${GREEN}OK${OFF} ]Finish!!!!"
}


function main(){
  printHeader
  clean
  download
  exit 0
}

main