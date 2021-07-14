require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new(name: "Tom", number: "8889997777", allergic: "Mango", member_ID: "Ix98567")}
  it "name valid" do
    expect(subject).to be_valid
  end
  it "not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
  it "not valid without a number" do 
    subject.number=nil
    expect(subject).to_not be_valid
  end
  it "not valid if number is greater than 10" do
    subject.number = "11122244447"
    expect(subject).to_not be_valid
  end
  it "not valid if number is less than 10" do
    subject.number = "123456789"
    expect(subject).to_not be_valid
  end
  it "not valid if number has other than integers" do
    subject.number = "0jfni(*&$8"
    expect(subject).to_not be_valid
  end
#   hmmmmmm what is wrong here?
  it "valid if empty" do
    subject.allergic=nil
    expect(subject).to be_valid
    end
end