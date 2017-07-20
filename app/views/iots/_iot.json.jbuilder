json.extract! iot, :id, :sensor, :value, :created_at, :updated_at
json.url iot_url(iot, format: :json)