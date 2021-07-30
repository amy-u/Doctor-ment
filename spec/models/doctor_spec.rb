require  'rails_helper'
RSpec.describe Doctor, type: :model do
    subject {Doctor.new(name: "Dr. Man", number: "8679990000", hospital_name: "General hospital", user_id: 1)}
    it "Doctor name should be valid" do
        expect(subject).to be_valid
    end
    it "valid name when nil" do
        subject.name = nil
        expect(subject).to be_valid
    end
    it "not valid number when nil" do 
        subject.number = nil
        expect(subject).to_not be_valid
    end
    it "not valid other than number" do
        subject.number = "0ljdn857))"
        expect(subject).to_not be_valid
    end
    it "not valid when number is greater than 10" do 
        subject.number = "12345678901"
        expect(subject).to_not be_valid
    end
    it "not valid when number is less than 10" do 
        subject.number = "415"
        expect(subject).to_not be_valid
    end
    it "valid hospital name is nil" do
        subject.hospital_name = nil
        expect(subject).to be_valid
    end
    it "not valid hospital name other than letters" do
        subject.hospital_name = "l08u879834jlj(*$"
        expect(subject).to_not be_valid
    end 
    it "not valid when user id is nil" do
        subject.user_id = nil
        expect(subject).to_not be_valid
    end
end