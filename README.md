This concourse-ci worker configuration helper will try to configure your concourse worker when it starts
so it deploys the public tsa key/ private worker key you passed as ENV variables

Set this ENV variables to deploy the keys

 - TSA_EXISTING_PUBLIC_KEY = < the public key of the TSA, usually in `/concourse-keys/tsa_host_key.pub`
 - WORKER_EXISTING_PRIVATE_KEY = the private key of an existing worker (shared key, located at `/concourse-keys/worker_key`) or an key you deployed into authorized_workers on the tsa  

to the default location at

 - /concourse-keys/tsa_host_key.pub
 - /concourse-keys/worker_key

See this on how to utilize that

 - https://github.com/EugenMayer/concourseci-server-boilerplate/blob/master/docker-compose-worker-standalone.yml
 - https://github.com/EugenMayer/concourseci-server-boilerplate/blob/master/.standalone-worker-env 

## Usage

Those are some examples

- https://github.com/EugenMayer/concourseci-server-boilerplate - that is your best starting point
- https://github.com/EugenMayer/docker-rancher-extra-catalogs/tree/master/templates - if you rancher, you are set to go
