class Plan < ApplicationRecord
  validate :only_one

  has_many :users

  monetize :price_cents
  enum period_type: [:days, :months, :years]

  private

  def only_one
    if Global.count >= 1
      errors.add :base, 'There can only be one global setting/your message here'
    end
  end
end
