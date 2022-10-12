# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :task_lists, class_name: 'TaskLists'
  belongs_to :team

  enum status: { public: 0, private: 1 }
end
