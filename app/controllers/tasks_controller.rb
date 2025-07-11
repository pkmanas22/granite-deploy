# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    tasks = Task.all
    render status: :ok, json: { tasks: }
  end

  def show
    @task = Task.find_by(slug: params[:slug])

    if @task
      render status: :ok, json: { task: @task }
    else
      render status: :not_found, json: { error: I18n.t("task.not_found") }
    end
  end
end
