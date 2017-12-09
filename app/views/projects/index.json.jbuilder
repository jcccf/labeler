json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :settings, :schema
  json.url project_url(project, format: :json)
end
