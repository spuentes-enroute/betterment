class User < ApplicationRecord
  belongs_to :plan
  belongs_to :team
  
  enum role: [:user, :manager, :admin]
  
  after_initialize :set_default_role, :if => :new_record?
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :invitable

  def set_default_role
    self.role ||= :user
  end
end
