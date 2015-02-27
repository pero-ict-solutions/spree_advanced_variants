require 'spec_helper'

describe "Generate variants" do
  stub_authorization!

  let(:product) { create(:product) }

  context "with no option_types assigned" do
    before do
      visit spree.admin_product_path(product)
      click_link "Variants"
    end

    it "will not render the 'generate variants' button" do
      expect(page).to_not have_content "Generate Variants"
    end
  end

  context "with option_types assigned to a product" do
    let(:product) { create(:product) }
    let(:option_value) { create(:option_value)}

    before do

      product.option_types << option_value.option_type
      product.save

      visit spree.admin_product_path(product)
      click_link "Variants"

    end

    it "will render the 'generate variants' button" do
      expect(page).to have_content Spree.t(:generate_variants)
    end

    it "will generate the variants based on all the options" do
      click_button "Generate Variants"
      expect(page).to have_content Spree.t(:generated_all_variants)
      expect(page).to have_content option_value.option_type.presentation
      expect(page).to have_content option_value.presentation
    end

  end
end
