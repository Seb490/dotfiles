if [[ "$OSTYPE" == "darwin"* ]]; then

	# Setting up Go
	export GOROOT=/usr/local/opt/go/libexec
	export GOPATH=$HOME/go
	export PATH=$PATH:$GOROOT/bin
	export PATH=$PATH:$GOPATH/bin

	# Setting up Java
	export JAVA_V8=$(/usr/libexec/java_home -v 1.8) 
	export JAVA_CV=$(/usr/libexec/java_home) 
#	export JAVA_HOME=$JAVA_CV
	export JAVA_HOME=$JAVA_V8
fi

if [[ "$OSTYPE" == "linux"* ]]; then

	# Setting up linuxbrew (deprecated)
#	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

	# Setting up Go
	export GOROOT="$HOME/code/goroot"
	export GOPATH="$HOME/code/go"
	export PATH="$PATH:$GOROOT/bin"
	export PATH="$PATH:$GOPATH/bin"

	# Setting up Java
#	export JAVA_V8="/usr/lib/jvm/java-8-openjdk-amd64"
	export JAVA_V11="/usr/lib/jvm/java-11-openjdk-amd64"
	export JAVA_HOME=$JAVA_V11
#	export JAVA_HOME=$JAVA_V8

fi
