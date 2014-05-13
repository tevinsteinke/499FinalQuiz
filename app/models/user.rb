class User < ActiveRecord::Base
  has_many :pizzas, dependent: :destroy
  validates_presence_of :name
end
