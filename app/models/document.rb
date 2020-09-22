class Document < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: true
  validates :number, length: { is: 11 }
  validates :number, numericality: { only_integer: true }
end
