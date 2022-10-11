# frozen_string_literal: true

class Plan < ApplicationRecord
  has_many :users

  validate :three_plans

  monetize :price_cents

  enum period_type: { days: 0, months: 1, years: 2 }

  private

  def three_plans
    errors.add :base, 'There can only be three plans in the application' if Global.count >= 3
  end
end
