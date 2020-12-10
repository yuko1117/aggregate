class Category < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '医薬品' },
   { id: 3, name: '化粧品' },
   { id: 4, name: '日用品' },
   { id: 5, name: '食品' }
 ]

  include ActiveHash::Associations
  has_many :item
end
