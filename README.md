# dev-image-library

This is a library of dev-focused images, mostly based off of Ubuntu 14.04.2 LTS. None of these images are intedned to be used for production, rather to make my life easier (and maybe yours) in the process of developing against distributed and/or complex environments.

They're not intended to be perfect, but serve a purpose 'well enough.' Pull requests are welcome as I'm definitely interested in continuing to improve upon these when there's time and a need to.

## dynamodb local images

This image just deploys a basic setup for running the Amazon Web Services' DynamoDB Local setup: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html

Sure, you can run this locally, but it decouples your environment from any level of configuration apart from Docker or Vagrant and conveniently plugs in to multiple-tier setups.

* Docker Image: https://registry.hub.docker.com/u/dualspark/dev-local-dynamodb/
* Vagrantbox:   https://s3-us-west-2.amazonaws.com/packages.dualspark.com/dev/vagrant/ubuntu1404-dynamodb-local-0.1.0.box
