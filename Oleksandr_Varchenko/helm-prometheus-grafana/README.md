# README

[Source](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack)

```./Jenkinsfile``` use in Jenkins jobs ```../jenkins/jenkins```


## To connect to Grafana

* Copy from ```jenkins_home/.kube/``` config to your computer

* Run-on your computer ```kubectl port-forward deploy/prometheus-grafana 3000```

* Connect to web UI Grafana ```localhost:3000```

