# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    tasks = Task.all
    render status: :ok, json: { tasks: }
  end

  def show
    task = Task.find_by!(slug: params[:slug])
    render_json({ task: task })
  end

  def create
    task = Task.new(task_params)
    task.save!
    render_notice(I18n.t("task.created"))
  end

  private

    def task_params
      params.require(:task).permit(:title)
    end
end
