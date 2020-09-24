class Document < ApplicationRecord
  validates :number, presence: { message: "CPF cannot be blank." }
  validates :number, uniqueness: { message: "CPF already blocked" }, on: :create
  validates :number, length: { is: 11, message: "CPF must have 11 digits." }
  validates :number, format: { with: /\A(\d{3}[-\.]?){3}\d{2}\z/, message: "CPF must have only numbers" }
end
