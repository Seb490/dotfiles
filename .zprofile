if [[ "$OSTYPE" == "darwin"* ]]; then
	# Setting up Go
	export GOROOT=/usr/local/opt/go/libexec
	export GOPATH=$HOME/dev/golang
	export PATH=$PATH:$GOROOT/bin
	export PATH=$PATH:$GOPATH/bin
	# Setting up Java
	# export JAVA_HOME=$(/usr/libexec/java_home) 
fi

