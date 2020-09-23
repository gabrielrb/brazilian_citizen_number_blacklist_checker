class Document < ApplicationRecord
  validates :number, presence: { message: "CPF cannot be blank." }
  validates :number, length: { is: 11, message: "CPF must have 11 digits." }
  validates :number, format: { with: /^(\d{3}[-\.]?){3}\d{2}$/, message: "CPF must have only numbers" }
end
