class Medication < ApplicationRecord
    belongs_to :user, optional: true

    # Come back to fix validation it only allows one word
  validates :name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/,
    message: "only allows letters" }
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 1, message: "Number needs to be 1 or greater"}
  validates :notes, length: {maximum: 500}, format: {with: /\A[a-zA-Z\.\s^0-9\/]+\z/, message: "letters are allowed and / and . allowed"}
  # need a gem to validate
  # validates_date :start_date, presence: true
  validates :user_id, presence: true
end
