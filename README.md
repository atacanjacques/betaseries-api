# betaseries-api

# Installation

Clone this projects, then :

```sh
gem build betaseries-api.gemspec
gem install betaseries-api
irb
```

# Demo

```sh
require 'betaseries/api'
show = Betaseries::Api.search("Futurama")
id = show["id"]
Betaseries::Api.episodes(id)
```
