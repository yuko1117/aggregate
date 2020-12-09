class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :item


  with_options presence: true do
    validates :affiliation, format: {with: /\A[0-9]+\z/ , message: "Input only number"}
    validates :name, format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/, message: 'Full-width characters'  }
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'Include both letters and numbers' }
  end
end
