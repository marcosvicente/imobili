require 'rails_helper'

RSpec.describe InfosController, type: :controller do

 describe "GET #index" do
    it "returns a success response" do
      Info.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: info.to_param}
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
      get :edit, params: {id: info.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Info" do
        expect {
          post :create, params: {info: valid_attributes}
        }.to change(Info, :count).by(1)
      end

      it "redirects to the created info" do
        post :create, params: {info: valid_attributes}
        expect(response).to redirect_to(Info.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {info: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested info" do
        info = Info.create! valid_attributes
        put :update, params: {id: info.to_param, info: new_attributes}
        info.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the info" do
        info = Info.create! valid_attributes
        put :update, params: {id: info.to_param, info: valid_attributes}
        expect(response).to redirect_to(info)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        info = Info.create! valid_attributes
        put :update, params: {id: info.to_param, info: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested info" do
      expect {
        delete :destroy, params: {id: info.to_param}
      }.to change(Info, :count).by(-1)
    end

    it "redirects to the infos list" do
      delete :destroy, params: {id: info.to_param}
      expect(response).to redirect_to(infos_url)
    end
  end

end
