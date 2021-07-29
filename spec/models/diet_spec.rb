require 'rails_helper'
RSpec.describe Diet, type: :model do
    subject {Diet.new(name: "Pasta", description: "Alfrado with spaghettie, milk, cheese, butter", meal_time: "Dinner", user_id: 1 )}
    it "subject valid" do
        expect(subject).to be_valid
    end
    it "not valid name is nil" do
        subject.name = nil
        expect(subject).to_not be_valid
    end
    it "not valid when name is other than letters" do
        subject.name = "llj088435"
        expect(subject).to_not be_valid
    end
    it "description should be valid when nil" do
        subject.description = nil
        expect(subject).to be_valid
    end
    it "description should be valid other than letters" do
        subject.description  = "1/4 table spoons of butter"
        expect(subject).to be_valid
    end
    it "meal time not valid when nil" do
        subject.meal_time = nil
        expect(subject).to_not be_valid
    end
    it "meal time valid with inclusion word" do
        subject.meal_time = "Brunch"
        expect(subject).to be_valid
    end
    it "not valid when meal time is other than inclusion word" do
        subject.meal_time = "jdsjs"
        expect(subject).to_not be_valid
    end
    it "not valid when user is nil" do
        subject.user_id = nil
        expect(subject).to_not be_valid
    end
end