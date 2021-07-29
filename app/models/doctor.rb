class Doctor < ApplicationRecord
    belongs_to :user, optional: true

    validates :name, presence: true,
              format: {
                with: /\A[a-zA-Z\.\s]+\z/,
                message: 'only allows letters',
              }, allow_blank: true
    validates :number, presence: true
    validates :number, numericality: { only_integer: true }
    validates :number, length: { is: 10 }
    validates :hospital_name,
              format: {
                with: /\A[a-zA-Z\s]+\z/,
                message: 'only allows letters',
              }, allow_blank: true
    validates :user_id, presence: true
end
