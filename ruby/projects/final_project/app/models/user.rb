# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :plan
  belongs_to :team

  enum role: { user: 0, manager: 1, admin: 2 }

  after_initialize :set_default_role, if: :new_record?

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :invitable

  def set_default_role
    self.role ||= :user
  end
end
