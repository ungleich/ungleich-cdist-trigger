![alt text](http://www.ungleich.ch/img/logo_200x200.svg "ungleich")

# ungleich-cdist-trigger

Container with cdist trigger feature enabled and running by default on port 3000.

# How to use it?

A practical example is the following:

``` bash
docker run --name trigger -d -p <host-port>:3000 ungleich/ungleich-cdist-trigger
```
However, if you don't need to access the container directly from your host, but from other containers in the network, you can ignore the ports mapping option.

If you want to run the container listening on a different port, you can run the container with:

``` bash
docker run --name trigger --expose <other-port> -it ungleich-cdist-trigger --http-port <other-port>
```
This will expose **both** your port and the default one (though nothing will be listening on the default port)

# How can other containers reach my cdist-trigger?

Please refer to [ungleich/ungleich-postgres-kea](https://hub.docker.com/r/ungleich/ungleich-postgres-kea/) for instructions about how to link containers within a user defined network.