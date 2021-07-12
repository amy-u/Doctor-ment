class User < ApplicationRecord
    has_many :doctors
    has_many :medications
    has_many :diets
end
