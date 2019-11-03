require 'rails_helper'

RSpec.describe Info, type: :model do
 context "create a new Info" do
    before(:each) do
      @info = create(:info)
    end
    it "create with valid arguments" do
      expect(Info.last.id).to eq(@info.id)
    end

  end

  context "Validations" do
    describe "presence_of?" do
      it{is_expected.to validate_presence_of(:address)}
    end

    describe "numericality" do
      it{is_expected.to validate_numericality_of(:phone).only_integer}
    end
  end

end
