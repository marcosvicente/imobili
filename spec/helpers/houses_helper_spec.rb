require 'rails_helper'

RSpec.describe HousesHelper, type: :helper do
  describe HousesHelper do
    describe "#house_sell" do
      context "when the house.sell exist" do
        it "return the concat string" do
          expect(helper.house_sell("400")).to eq("R$ 400 / Vender")
        end
      end

      context "when the house.sell exist" do
        it "return the concat string" do
          expect(helper.house_sell("400")).to eq("R$ 400 / Vender")
        end
      end

    end

    describe "#house_rent" do
      context "when the house.sell exist" do
        it "return the concat string" do
          expect(helper.house_rent("400")).to eq("R$ 400 / Alugar")
        end
      end

      context "when the house.sell not exist" do
        it "return the concat string" do
          expect(helper.house_rent(nil)).to eq("Preço não existe")
        end
      end
    end
  end
end

