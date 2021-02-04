json.extract! tweeter, :id, :tweet, :created_at, :updated_at
json.url tweeter_url(tweeter, format: :json)
