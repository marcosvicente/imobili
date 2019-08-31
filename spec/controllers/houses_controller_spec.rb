require 'rails_helper'

RSpec.describe HousesController, type: :controller do
  before(:each) do
      @house = create(:house)
      @house_attributes = attributes_for(:house)
      @house_attributes_invalid = attributes_for(:house, size: "text" )
    end

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end

  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: @house.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      get :edit, params: {id: @house.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new House" do
        expect {
          post :create, params: {house: @house_attributes}
        }.to change(House, :count).by(1)
      end

      it "redirects to the created house" do
        post :create, params: {house: @house_attributes}
        expect(response).to redirect_to(House.last)
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        post :create, params: {house: @house_attributes_invalid}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "updates the requested house" do
        put :update, params: {id: @house.to_param, house: @house_attributes}
        @house.reload

        expect(House.find_by(id: @house.id).address).to eq(@house.address)
      end

      it "redirects to the house" do
        put :update, params: {id: @house.to_param, house: @house_attributes}
        expect(response).to redirect_to(@house)
      end
    end

    context "with invalid params" do
      it "returns a success response " do
        put :update, params: {id: @house.to_param, house: @house_attributes_invalid}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested house" do
      expect {
        delete :destroy, params: {id: @house.to_param}
      }.to change(House, :count).by(-1)
    end

    it "redirects to the houses list" do
      delete :destroy, params: {id: @house.to_param}
      expect(response).to redirect_to(houses_url)
    end
  end

end
