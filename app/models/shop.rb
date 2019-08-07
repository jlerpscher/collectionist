class Shop < ApplicationRecord
  has_many :opening_hours, dependent: :destroy
end
