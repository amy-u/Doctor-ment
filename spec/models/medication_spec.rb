require 'rails_helper'
RSpec.describe Medication, type: :model do
    subject {Medication.new(name: "Vitamin C", quantity: 30, notes: "Take 2 tabs a day", user_id: 1 )}
    it "subject valid" do 
        expect(subject).to be_valid
    end
    it "name not valid except letters" do
        subject.name = "((940**"
        expect(subject).to_not be_valid
    end
    it "not valid when quantity is negative" do
        subject.quantity = "-94"
        expect(subject).to_not be_valid
    end
    it "valid when quantity is 100" do
        subject.quantity = 100
        expect(subject).to be_valid
    end
    it "not valid when quantity is nil" do
        subject.quantity = nil
        expect(subject).to_not be_valid
    end
    it "valid notes when / and . is used" do
        subject.notes = "Take 1/2 tab in the morning."
        expect(subject).to be_valid
    end
    it "valid when notes is nil" do
        subject.notes = nil
        expect(subject).to be_valid
    end
    it "not valid when user id is nil" do
        subject.user_id = nil
        expect(subject).to_not be_valid
    end 
end