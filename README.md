[![CircleCI](https://circleci.com/gh/marcorossi-cb/Operationalize-a-Machine-Learning-Microservice-API.svg?style=svg)](https://circleci.com/gh/marcorossi-cb/Operationalize-a-Machine-Learning-Microservice-API)

# Cloud DevOps, Scaling Microservices

The project's goal is to operationalize a machine learning microservice using kubernetes. The service serves out predictions (inference) about housing prices through API calls. The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.


### Install

- Docker
- Virtualbox

For Mac:

```
brew cask install virtualbox
```

- Minikube

```
brew cask install minikube
```

### Files explanation
- config.yml: CircleCI configuration file for running the tests
- app.py: Python flask app that serves out predictions (inference) about housing prices through API calls
- Dockerfile: Dockerfile for building the image
- make_prediction.sh: Send a request to the Python flask app to get a prediction
- Makefile: includes instructions on environment setup and lint tests
- run_docker.sh: file to be able to get Docker running, locally
- run_kubernetes.sh: file to run the app in kubernetes
- upload_docker.sh: file to upload the image to docker


### Run the project


1. You should have a virtual machine like VirtualBox and minikube installed, as per the project environmet instructions. To start a local cluster, type the terminal command: 
```
minikube start
```

2. To deploy this application in kubernetes run:
```
./run_kubernetes.sh
```

3. After you’ve called run_kubernetes.sh, and a pod is up and running, make a prediction using a separate terminal tab and run 
```
./make_prediction.sh
```

4. Delete the cluster
```
minikube delete
```
