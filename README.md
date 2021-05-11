# pact-publish-pactfiles-action

Publishes pactfiles to a Pactflow server (relies on [actions/checkout](https://github.com/marketplace/actions/checkout) being called first).

## Example
```yaml
# (This just saves defining these multiple times for different pact jobs)
env:
  version: "1.2.3"
  application_name: "my_api_consumer"
  pact_broker: ${{ secrets.PACT_BROKER }}
  pact_broker_token: ${{ secrets.PACT_BROKER_TOKEN }}

jobs:
  pact-publish-pactfile-action:
    steps:
      # MANDATORY: Must use 'checkout' first
      - uses: actions/checkout@v2
      - uses: roycdiscovery/pact-publish-pactfiles-action@v1.0
        env:
          pactfiles: src/pactfiles
```
