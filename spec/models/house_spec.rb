require 'rails_helper'

RSpec.describe House, type: :model do
 context "create a new House" do
    before(:each) do
      @house = create(:house)
    end
    it "create with valid arguments" do
      expect(House.last.id).to eq(@house.id)
    end

  end

  context "Validations" do
    describe "presence_of?" do
      it{is_expected.to validate_presence_of(:address)}
      it{is_expected.to validate_presence_of(:cep)}
      it{is_expected.to validate_presence_of(:size)}
      it{is_expected.to validate_presence_of(:rooms)}
      it{is_expected.to validate_presence_of(:bathrooms)}
      it{is_expected.to validate_presence_of(:parking)}
    end

    describe "numericality" do
      it{is_expected.to validate_numericality_of(:size).only_integer}
      it{is_expected.to validate_numericality_of(:rooms).only_integer}
      it{is_expected.to validate_numericality_of(:bathrooms).only_integer}
      it{is_expected.to validate_numericality_of(:parking).only_integer}
    end

  end
end
