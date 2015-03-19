json.array!(@projects) do |project|
  json.extract! project, :id, :name, :about, :dev_date, :repo, :status
  json.url project_url(project, format: :json)
end
