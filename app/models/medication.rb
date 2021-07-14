class Medication < ApplicationRecord
    belongs_to :user

    # Come back to fix validation it only allows one word
  validates :name, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true}
  validates :notes, length: {maximum: 500}
  # validates_date :start_date, presence: true
end
