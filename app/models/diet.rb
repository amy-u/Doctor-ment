class Diet < ApplicationRecord
    belongs_to :user

  validates :name, presence: true
  # validates :photo, allow_blank: true, format: {
  #   with: %r{\.gif|jpg|png}i,
  #   message: 'must be a url for gif, jpg, or png image.'
  # }
  validates :description, length: {maximum: 500}
  validates :meal_time, format: { with: /\A[a-zA-Z]+\z/,
    message: "Lunch, Dinner, Breakfast, and Snack" }
end
