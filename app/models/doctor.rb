class Doctor < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :name,
              format: {
                with: /\A[a-zA-Z]+\z/,
                message: 'only allows letters',
              }
    validates :number, presence: true
    validates :number, numericality: { only_integer: true }
    validates :number, length: { is: 10 }
    validates :hospital_name,
              format: {
                with: /\A[a-zA-Z]+\z/,
                message: 'only allows letters',
              }
end
