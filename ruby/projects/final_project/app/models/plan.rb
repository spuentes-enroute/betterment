# frozen_string_literal: true

class Plan < ApplicationRecord
  has_many :users

  # validate :only_one

  monetize :price_cents

  enum period_type: { days: 0, months: 1, years: 2 }

  private

  # why is this here?
  def only_one
    errors.add :base, 'There can only be one global setting/your message here' if Global.count >= 1
  end
end
