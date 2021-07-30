require 'rails_helper'

RSpec.describe "HomeController", type: :request do
  describe "GET home/index" do
    it "status 200 home view" do
      get "/"
      expect(response.status).to eq(200)
    end
  end
end
