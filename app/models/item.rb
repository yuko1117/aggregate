class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :explanation
    validates :image
    validates :category_id, numericality: { other_than: 1 }
  end
end
