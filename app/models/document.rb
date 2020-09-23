class Document < ApplicationRecord
  validates :number, presence: { message: "CPF cannot be blank." }
  validates :number, uniqueness: { message: "CPF already blocked" }
  validates :number, length: { is: 11, message: "CPF must have 11 digits." }
  validates :number, numericality: { only_integer: true, message: "Type only numbers." }
end
