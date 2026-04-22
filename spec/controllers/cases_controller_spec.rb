require 'rails_helper'

RSpec.describe CasesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @cases" do
      get :index
      expect(assigns(:cases)).not_to be_nil
    end
  end
end
