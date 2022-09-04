# RubyEveesiClient::GetCharactersCharacterIdIndustryJobs200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_id** | **Integer** | Job activity ID |  |
| **blueprint_id** | **Integer** | blueprint_id integer |  |
| **blueprint_location_id** | **Integer** | Location ID of the location from which the blueprint was installed. Normally a station ID, but can also be an asset (e.g. container) or corporation facility |  |
| **blueprint_type_id** | **Integer** | blueprint_type_id integer |  |
| **completed_character_id** | **Integer** | ID of the character which completed this job | [optional] |
| **completed_date** | **Time** | Date and time when this job was completed | [optional] |
| **cost** | **Float** | The sume of job installation fee and industry facility tax | [optional] |
| **duration** | **Integer** | Job duration in seconds |  |
| **end_date** | **Time** | Date and time when this job finished |  |
| **facility_id** | **Integer** | ID of the facility where this job is running |  |
| **installer_id** | **Integer** | ID of the character which installed this job |  |
| **job_id** | **Integer** | Unique job ID |  |
| **licensed_runs** | **Integer** | Number of runs blueprint is licensed for | [optional] |
| **output_location_id** | **Integer** | Location ID of the location to which the output of the job will be delivered. Normally a station ID, but can also be a corporation facility |  |
| **pause_date** | **Time** | Date and time when this job was paused (i.e. time when the facility where this job was installed went offline) | [optional] |
| **probability** | **Float** | Chance of success for invention | [optional] |
| **product_type_id** | **Integer** | Type ID of product (manufactured, copied or invented) | [optional] |
| **runs** | **Integer** | Number of runs for a manufacturing job, or number of copies to make for a blueprint copy |  |
| **start_date** | **Time** | Date and time when this job started |  |
| **station_id** | **Integer** | ID of the station where industry facility is located |  |
| **status** | **String** | status string |  |
| **successful_runs** | **Integer** | Number of successful runs for this job. Equal to runs unless this is an invention job | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdIndustryJobs200Ok.new(
  activity_id: null,
  blueprint_id: null,
  blueprint_location_id: null,
  blueprint_type_id: null,
  completed_character_id: null,
  completed_date: null,
  cost: null,
  duration: null,
  end_date: null,
  facility_id: null,
  installer_id: null,
  job_id: null,
  licensed_runs: null,
  output_location_id: null,
  pause_date: null,
  probability: null,
  product_type_id: null,
  runs: null,
  start_date: null,
  station_id: null,
  status: null,
  successful_runs: null
)
```

