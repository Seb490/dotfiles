if [[ "$OSTYPE" == "darwin"* ]]; then
	# Setting up Go
	export GOROOT=/usr/local/opt/go/libexec
	export GOPATH=$HOME/go
	export PATH=$PATH:$GOROOT/bin
	export PATH=$PATH:$GOPATH/bin
	# Setting up Java
	#export JAVA_HOME=$(/usr/libexec/java_home -v 10) 
	export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) 
fi

if [[ "$OSTYPE" == "linux"* ]]; then
	export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
	export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
	export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
	export GOROOT="/home/linuxbrew/.linuxbrew/opt/go/libexec"
	export GOPATH="$HOME/go"
	export PATH="$PATH:$GOROOT/bin"
	export PATH="$PATH:$GOPATH/bin"
	# Setting up Java
	export JAVA_V8="/usr/lib/jvm/java-8-openjdk-amd64"
	export JAVA_V11="/usr/lib/jvm/java-11-openjdk-amd64"
	#export JAVA_HOME=$JAVA_V11
	export JAVA_HOME=$JAVA_V8
fi
