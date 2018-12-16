require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "the edit a product" do
    it "edits a product page" do
      product = Product.create(:strain => 'Obama Kush', :cann_abbr => 'THC', :cost => 10.0, :origin => 'Brazil')
      review = Review.create(:author => 'Chuck Norris', :description => 'Some stellar chronic', :rating => 5, :product_id => product.id)
      visit product_path(product)
      click_on 'Obama Kush'
      click_on 'Edit'
      fill_in 'Strain', :with => 'Wash the dog'
      click_on 'Update Product'
      expect(page).to have_content 'Wash the dog'
    end
  end

  describe "deletes a product" do
    it "deletes a product page" do
      product = Product.create(:strain => 'Obama Kush', :cann_abbr => 'THC', :cost => 10.0, :origin => 'Brazil')
      review = Review.create(:author => 'Chuck Norris', :description => 'Some stellar chronic', :rating => 5, :product_id => product.id)
      visit product_path(product)
      click_on 'Obama Kush'
      click_on 'Delete'
      expect(page).to not_have_content 'Obama Kush'
    end
  end



end
