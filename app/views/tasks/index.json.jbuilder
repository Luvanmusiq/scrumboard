json.array!(@tasks) do |task|
  json.extract! task, :id, :story_id, :name, :description, :owner, :estimated_hours, :todo_hours, :completed_hours, :dependencies, :status, :status_indicator
  json.url task_url(task, format: :json)
end
