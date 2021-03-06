class Diet < ApplicationRecord
    belongs_to :user, optional: true

  validates :name, presence: true, format: { with: /\A[a-zA-Z\.\s]+\z/,
    message: "only allows letters" }
  # validates :photo, allow_blank: true, format: {
  #   with: %r{\.gif|jpg|png}i,
  #   message: 'must be a url for gif, jpg, or png image.'
  # }
  validates :description, length: {maximum: 500}, allow_blank: true
  validates :meal_time, presence: true, inclusion: {in: %w(Breakfast Lunch Dinner Snack Brunch)}
  validates :user_id, presence: true
end
