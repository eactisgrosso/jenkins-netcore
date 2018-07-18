# Jenkins ready for .NET Core & React apps CI
Docker in Docker Jenkins setup, ready for deployment of netcore services & react apps to Amazon ECS.

# Usage

```
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home eactisgrosso/jenkins-netcore
```

This will automatically create a 'jenkins_home' volume on docker host, that will survive container stop/restart/deletion.

# Pre-installed

Docker  
AWS CLI  
Netcore 2.0 & 2.1  
Node.js

# Plugins

scm-api:2.2.6  
pipeline-stage-view:2.9  
pipeline-model-api:1.2.7  
htmlpublisher:1.14  
display-url-api:2.2.0  
workflow-job:2.12.2  
ace-editor:1.1  
workflow-cps:2.45  
pipeline-rest-api:2.9  
pipeline-stage-step:2.3  
msbuild:1.29  
antisamy-markup-formatter:1.5  
gradle:1.28  
ldap:1.20  
momentjs:1.1.1  
mercurial:2.3  
apache-httpcomponents-client-4-api:4.5.3-2.1  
resource-disposer:0.8  
workflow-durable-task-step:2.19  
workflow-support:2.18  
subversion:2.10.3  
jsch:0.1.54.2  
pam-auth:1.3  
workflow-multibranch:2.16  
pipeline-input-step:2.8  
jquery-detached:1.2.1  
timestamper:1.8.9  
matrix-auth:2.2  
branch-api:2.0.18  
aws-credentials:1.23  
script-security:1.41  
ssh-slaves:1.26  
mapdb-api:1.0.9.0  
pipeline-build-step:2.7  
junit:1.24  
amazon-ecr:1.6  
cloudbees-folder:6.3  
mailer:1.20  
github-branch-source:2.3.2  
docker-commons:1.11  
jackson2-api:2.8.11.1  
credentials:2.1.16  
ant:1.8  
workflow-step-api:2.14  
pipeline-milestone-step:1.3.1  
handy-uri-templates-2-api:2.1.6-1.0  
structs:1.14  
ssh-credentials:1.13  
pipeline-stage-tags-metadata:1.2.7  
workflow-basic-steps:2.6  
durable-task:1.21  
nunit:0.23  
token-macro:2.3  
git:3.8.0  
mstest:0.23  
build-timeout:1.19  
workflow-cps-global-lib:2.9  
pipeline-github-lib:1.0  
bitbucket:1.1.8  
docker-workflow:1.15.1  
ws-cleanup:0.34  
github-api:1.90  
github:1.29.0  
bouncycastle-api:2.16.2  
authentication-tokens:1.3  
cloudbees-bitbucket-branch-source:2.2.10  
credentials-binding:1.15  
workflow-aggregator:2.5  
pipeline-model-definition:1.2.7  
pipeline-graph-analysis:1.6  
plain-credentials:1.4  
email-ext:2.61  
pipeline-model-declarative-agent:1.1.1  
git-client:2.7.1  
aws-java-sdk:1.11.264  
pipeline-model-extensions:1.2.7  
matrix-project:1.12  
handlebars:1.1.1  
git-server:1.7  
workflow-scm-step:2.6  
workflow-api:2.26  
