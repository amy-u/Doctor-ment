class User < ApplicationRecord
    has_many :doctors, dependent: :destroy
    has_many :medications, dependent: :destroy
    has_many :diets, dependent: :destroy

    validates :name, presence: true, format: { with: /\A[a-zA-Z\.\s]+\z/,
        message: "only allows letters" }
     validates :number, presence: true
     validates :number, numericality: { only_integer: true }
     validates :number, length: { is: 10 }
    #  validates :photo, allow_blank: true, format: {
      #  with: %r{\.gif|jpg|png}i,
      #  message: 'must be a url for gif, jpg, or png image.'
    #  }
     validates :allergic, length: {maximum: 500}
     validates :allergic, format: { with: /\A[a-zA-Z ^0-9\s]+\z/,
       message: "only allows letters" }, allow_blank: true
    validates :member_ID, format: {with: /\A[a-zA-Z ^0-9'!@#\$%\^&*+_=\s]+\z/}, allow_blank: true
   
end
