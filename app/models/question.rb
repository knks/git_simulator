class Question < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, uniqueness: true

  has_many :choices, dependent: :destroy
end
