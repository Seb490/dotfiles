if [[ "$OSTYPE" == "darwin"* ]]; then
	# Setting up Go
	#export GOROOT=/usr/local/opt/go/libexec
	#export GOPATH=$HOME/dev/golang
	#export PATH=$PATH:$GOROOT/bin
	#export PATH=$PATH:$GOPATH/bin
	# Setting up Java
	# export JAVA_HOME=$(/usr/libexec/java_home) 
fi

if [[ "$OSTYPE" == "linux"* ]]; then
	export GOROOT=/usr/local/go
	export GOPATH=$HOME/go
	export PATH=$PATH:$GOROOT/bin
	export PATH=$PATH:$GOPATH/bin
fi
