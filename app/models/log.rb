# frozen_string_literal: true

class Log < ApplicationRecord
  validates :task_id, presence: true
  validates :message, presence: true
end
