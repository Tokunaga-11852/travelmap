class View < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :information
    validates :address
    validates :access
  end
  
  belongs_to :user
  has_one_attached :image
end
