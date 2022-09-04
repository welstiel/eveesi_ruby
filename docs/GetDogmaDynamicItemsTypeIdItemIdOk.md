# RubyEveesiClient::GetDogmaDynamicItemsTypeIdItemIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **Integer** | The ID of the character who created the item |  |
| **dogma_attributes** | [**Array&lt;GetDogmaDynamicItemsTypeIdItemIdDogmaAttribute&gt;**](GetDogmaDynamicItemsTypeIdItemIdDogmaAttribute.md) | dogma_attributes array |  |
| **dogma_effects** | [**Array&lt;GetDogmaDynamicItemsTypeIdItemIdDogmaEffect&gt;**](GetDogmaDynamicItemsTypeIdItemIdDogmaEffect.md) | dogma_effects array |  |
| **mutator_type_id** | **Integer** | The type ID of the mutator used to generate the dynamic item. |  |
| **source_type_id** | **Integer** | The type ID of the source item the mutator was applied to create the dynamic item. |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetDogmaDynamicItemsTypeIdItemIdOk.new(
  created_by: null,
  dogma_attributes: null,
  dogma_effects: null,
  mutator_type_id: null,
  source_type_id: null
)
```

