class Book < ApplicationRecord
  belongs_to :group

  has_many :authors_books, dependent: :destroy
  has_many :authors, through: :authors_books

  mount_uploader :image, ImageUploader

  validates :name, :image, :authors, presence: true
end
