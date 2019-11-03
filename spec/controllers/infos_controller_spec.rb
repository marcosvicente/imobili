require 'rails_helper'

RSpec.describe InfosController, type: :controller do

  before(:each) do
    @info = create(:info)
    @info_attributes = attributes_for(:info)
    @info_attributes_invalid = attributes_for(:info, phone: "text" )
  end

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: @info.to_param}
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
      get :edit, params: {id: @info.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Info" do
        expect {
          post :create, params: {info: @info_attributes}
        }.to change(Info, :count).by(1)
      end

      it "redirects to the created info" do
        post :create, params: {info: @info_attributes}
        expect(response).to redirect_to(Info.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {info: @info_attributes_invalid}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do

      it "updates the requested info" do
        put :update, params: {id: @info.to_param, info: @info_attributes}
        @info.reload
        expect(Info.find_by(id: @info.id).address).to eq(@info.address)
      end

      it "redirects to the info" do
        put :update, params: {id: @info.to_param, info: @info_attributes}
        expect(response).to redirect_to(@info)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: {id: @info.to_param, info: @info_attributes_invalid}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested info" do
      expect {
        delete :destroy, params: {id: @info.to_param}
      }.to change(Info, :count).by(-1)
    end

    it "redirects to the infos list" do
      delete :destroy, params: {id: @info.to_param}
      expect(response).to redirect_to(infos_url)
    end
  end

end
