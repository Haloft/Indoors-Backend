class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :hours, :project_id
end
