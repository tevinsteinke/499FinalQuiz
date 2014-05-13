class Pizza < ActiveRecord::Base
  belongs_to :user
  validates :toppings, length: { maximum: 100 }
  validates_presence_of :toppings
  validates_presence_of :user_id
  validate :validate_user_id
  validate :keep_id

  def validate_user_id
    errors.add(:user_id, "is invalid") unless User.exists?(self.user_id)
  end

  def keep_id
    if user_id_changed? && self.persisted?
      errors.add(:user_id, "Change of user_id not allowed!")
    end
  end

end
