json.array!(@stories) do |story|
  json.extract! story, :id, :project_id, :name, :description, :owner, :todo_hours, :status, :status_indicator, :dependencies
  json.url story_url(story, format: :json)
end
