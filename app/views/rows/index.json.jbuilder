json.array!(@rows) do |row|
  json.extract! row, :id, :identifier, :project_id, :data
  json.url row_url(row, format: :json)
end
