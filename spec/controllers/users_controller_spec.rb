# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    let(:user) { build(:user) }

    before { get :new }

    it "assigns the new user" do
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "POST #create" do
    let(:valid_user_params) do
      { user:
        {
          email: "ronny@caldera.com",
          preferences: %w[admin],
        } }
    end

    context "when the user params are valid" do
      it { expect(response).to have_http_status(:ok) }

      it "creates the user" do
        expect { post :create, params: valid_user_params }.to change(User, :count).by(1)
      end
    end

    context "when the user params are not valid" do
      let(:invalid_user_params) do
        {
          user: {
            email: nil,
            preferences: nil,
          },
        }
      end

      before { post :create, params: invalid_user_params }

      it "has an error message" do
        expect(response).to redirect_to(root_url)
      end
    end
  end
end
