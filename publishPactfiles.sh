#!/usr/bin/env bash

echo """
pact_broker: $pact_broker
pact_broker_token: $pact_broker_token
application_name: $application_name
version: $version
pactfiles: $pactfiles
"""

docker run --rm \
 -w ${PWD} \
 -v ${PWD}:${PWD} \
 -e PACT_BROKER_BASE_URL=$pact_broker \
 -e PACT_BROKER_TOKEN=$pact_broker_token \
  pactfoundation/pact-cli:latest \
  publish \
  $pactfiles \
  --consumer-app-version $version