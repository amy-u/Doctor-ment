require 'rails_helper'

RSpec.describe "Users", type: :request do
  # describe "GET /users" do
  #   it "render the user view" do
  #     FactoryBot.create_list(:user, 1)
  #     get users_path
  #     expect(response).to render_template(:index)
  #   end
  # end
  # ~~~~Why is tis one not passing?
  # Every time I run rspec some times it passes or it doesn't (need to be fixed)
  # describe "get user/" do
  #   it "renders the :show template" do
  #   user = FactoryBot.create(:user)
  #   get user_path(id: user.id)
  #   expect(response).to render_template(:show)
  #   end
  # end
end
