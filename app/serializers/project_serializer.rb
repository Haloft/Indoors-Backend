class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :done, :date, :name, :customer, :sum_hours

  has_many :tasks
end
