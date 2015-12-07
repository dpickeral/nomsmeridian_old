json.array!(@midpoints) do |midpoint|
  json.extract! midpoint, :id
  json.url midpoint_url(midpoint, format: :json)
end
