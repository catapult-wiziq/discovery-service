## discovery-service

An [Netflix Eureka](https://github.com/Netflix/eureka/) service discovery built into a docker image and deployed as a core component of [deis](https://github.com/deis/deis) on coreos cluster using [fleet](https://github.com/coreos/fleet)

### Building docker image

    docker build -t discovery-service .
    docker tag discovery-service:latest 127.0.0.1:5000/discovery-service:latest
    ssh -Nf -L 5000:127.0.0.1:5000 core@$REGISTRY_HOST # port-forward the deis-registry port (current version allows insecure registry)
    docker push 127.0.0.1:5000/discovery-service
    killall ssh

### Install the fleet unit using deisctl

   deisctl install discovery-service

### Pulling image
Pull docker image on one of deis cluster host where we want to insatll the service

    deis pull <docker-registry-host>:5000/discovery-service
