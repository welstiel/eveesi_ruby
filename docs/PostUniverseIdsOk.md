# RubyEveesiClient::PostUniverseIdsOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | [**Array&lt;PostUniverseIdsAgent&gt;**](PostUniverseIdsAgent.md) | agents array | [optional] |
| **alliances** | [**Array&lt;PostUniverseIdsAlliance&gt;**](PostUniverseIdsAlliance.md) | alliances array | [optional] |
| **characters** | [**Array&lt;PostUniverseIdsCharacter&gt;**](PostUniverseIdsCharacter.md) | characters array | [optional] |
| **constellations** | [**Array&lt;PostUniverseIdsConstellation&gt;**](PostUniverseIdsConstellation.md) | constellations array | [optional] |
| **corporations** | [**Array&lt;PostUniverseIdsCorporation&gt;**](PostUniverseIdsCorporation.md) | corporations array | [optional] |
| **factions** | [**Array&lt;PostUniverseIdsFaction&gt;**](PostUniverseIdsFaction.md) | factions array | [optional] |
| **inventory_types** | [**Array&lt;PostUniverseIdsInventoryType&gt;**](PostUniverseIdsInventoryType.md) | inventory_types array | [optional] |
| **regions** | [**Array&lt;PostUniverseIdsRegion&gt;**](PostUniverseIdsRegion.md) | regions array | [optional] |
| **stations** | [**Array&lt;PostUniverseIdsStation&gt;**](PostUniverseIdsStation.md) | stations array | [optional] |
| **systems** | [**Array&lt;PostUniverseIdsSystem&gt;**](PostUniverseIdsSystem.md) | systems array | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::PostUniverseIdsOk.new(
  agents: null,
  alliances: null,
  characters: null,
  constellations: null,
  corporations: null,
  factions: null,
  inventory_types: null,
  regions: null,
  stations: null,
  systems: null
)
```

