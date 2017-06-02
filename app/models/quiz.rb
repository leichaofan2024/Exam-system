class Quiz < ApplicationRecord

  has_many :questions, dependent: :destroy
  has_many :exams
  belongs_to :product
end
