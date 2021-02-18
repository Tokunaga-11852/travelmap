class View < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :information
    validates :address
    validates :access
    validates :shop
    validates :opening_hours
    validates :price
    validates :phone_number, format: {with: /\A[0-9]+\z/, message: "is invalid"}
  end
  
  belongs_to :user
  has_one_attached :image
end