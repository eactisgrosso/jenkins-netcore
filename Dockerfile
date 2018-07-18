FROM jenkins/jenkins:lts
MAINTAINER eactisgrosso

USER root

# Base packages			
RUN apt-get update && apt-get -y install \
	python \
	curl \
	unzip \
	zip \
	apt-transport-https \
    ca-certificates \
    gnupg2 \
    software-properties-common \
	libunwind8 \ 
	gettext \ 
	jq \
	&& cd /tmp \ 

# Install AWS CLI			
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \ 
	&& unzip awscli-bundle.zip \
	&& ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws \
	&& rm awscli-bundle.zip && rm -rf awscli-bundle \
	
# Install Docker			
RUN	curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" \
	&& apt-get update \
	&& apt-get -y install docker-ce	\
		
# Install .NET Core 2.0 && 2.1		
RUN	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
	&& mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg \
	&& sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/dotnetdev.list' \
	&& apt-get update \
	&& apt-get -y apt-get install dotnet-sdk-2.0.0 \
	&& apt-get -y install dotnet-sdk-2.1 \
	&& dotnet new -i Amazon.Lambda.Templates::*

# Install Hugo	
RUN curl -L >hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.40.2/hugo_0.40.2_Linux-64bit.tar.gz \
 && tar -xzvf hugo.tar.gz -C /usr/bin \
 && rm hugo.tar.gz

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt