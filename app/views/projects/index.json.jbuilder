json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :product_owner
  json.url project_url(project, format: :json)
end
