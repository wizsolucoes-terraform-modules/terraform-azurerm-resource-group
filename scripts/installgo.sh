# codenoid
# https://gist.github.com/codenoid/4806365032bb4ed62f381d8a76ddb8e6
printf "Checking latest Go version...\n";
LATEST_GO_VERSION="$(curl --silent https://go.dev/VERSION?m=text)";
TEMP=$(mktemp -p /data/path/to/results/ ${LATEST_GO_VERSION}.linux-amd64.tar.gz)
LATEST_GO_DOWNLOAD_URL="https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz"
INSTALL_PATH_GO="/opt"


printf "Downloading ${LATEST_GO_DOWNLOAD_URL}\n\n";
cd ${TEMP}
curl -OJ -L --progress-bar "${LATEST_GO_DOWNLOAD_URL}"

printf "Extracting file...\n"
mkdir -p "${INSTALL_PATH_GO}/go"
tar -xf ${LATEST_GO_VERSION}.linux-amd64.tar.gz -C "${INSTALL_PATH_GO}"

export GOROOT="${INSTALL_PATH_GO}/go"
export GOPATH="${INSTALL_PATH_GO}/go/packages"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

printf '
export GOROOT="${INSTALL_PATH_GO}/go"
export GOPATH="${INSTALL_PATH_GO}/go/packages"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
\n' > /etc/profile.d/go.sh

printf "Remove temp files\n";
rm "${LATEST_GO_VERSION}.linux-amd64.tar.gz" -f

printf "You are ready to Go!\n";
go version