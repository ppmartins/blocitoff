class Item < ActiveRecord::Base
  has_one :user
  validates :name, presence: true
  validates :user_id, presence: true
end
