# frozen_string_literal: true

json.task do
  json.extract! @task, :id, :slug, :title

  if @task.assigned_user.present?
    json.assigned_user do
      json.extract! @task.assigned_user, :id, :name
    end
  else
    json.assigned_user nil
  end
end
