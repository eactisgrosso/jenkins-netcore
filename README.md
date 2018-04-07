# Jenkins ready for .NET Core CI
Dockerized Jenkins ready for continuous deployment of netcore apps in Amazon ECS.


# Usage

```
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock eactisgrosso/jenkins-netcore:lts
```

this will automatically create a 'jenkins_home' volume on docker host, that will survive container stop/restart/deletion.

