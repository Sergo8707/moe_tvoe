class Item < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 100}
  validates :address, presence: true
  validates :description, presence: true, length: {maximum: 500}

end
