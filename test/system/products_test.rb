require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Account", with: @product.account_id
    fill_in "Bar code", with: @product.bar_code
    fill_in "Current stock", with: @product.current_stock
    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Product category", with: @product.product_category_id
    fill_in "Provider", with: @product.provider_id
    fill_in "Reorder threshold", with: @product.reorder_threshold
    fill_in "Slug", with: @product.slug
    fill_in "Status", with: @product.status
    fill_in "Uid", with: @product.uid
    fill_in "Unit price", with: @product.unit_price
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Account", with: @product.account_id
    fill_in "Bar code", with: @product.bar_code
    fill_in "Current stock", with: @product.current_stock
    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Product category", with: @product.product_category_id
    fill_in "Provider", with: @product.provider_id
    fill_in "Reorder threshold", with: @product.reorder_threshold
    fill_in "Slug", with: @product.slug
    fill_in "Status", with: @product.status
    fill_in "Uid", with: @product.uid
    fill_in "Unit price", with: @product.unit_price
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
