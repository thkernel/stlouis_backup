require "application_system_test_case"

class StockMovementsTest < ApplicationSystemTestCase
  setup do
    @stock_movement = stock_movements(:one)
  end

  test "visiting the index" do
    visit stock_movements_url
    assert_selector "h1", text: "Stock Movements"
  end

  test "creating a Stock movement" do
    visit stock_movements_url
    click_on "New Stock Movement"

    fill_in "Account", with: @stock_movement.account_id
    fill_in "Description", with: @stock_movement.description
    fill_in "Movement type", with: @stock_movement.movement_type
    fill_in "Product", with: @stock_movement.product_id
    fill_in "Quantity", with: @stock_movement.quantity
    fill_in "Status", with: @stock_movement.status
    fill_in "Uid", with: @stock_movement.uid
    fill_in "Unity", with: @stock_movement.unity_id
    click_on "Create Stock movement"

    assert_text "Stock movement was successfully created"
    click_on "Back"
  end

  test "updating a Stock movement" do
    visit stock_movements_url
    click_on "Edit", match: :first

    fill_in "Account", with: @stock_movement.account_id
    fill_in "Description", with: @stock_movement.description
    fill_in "Movement type", with: @stock_movement.movement_type
    fill_in "Product", with: @stock_movement.product_id
    fill_in "Quantity", with: @stock_movement.quantity
    fill_in "Status", with: @stock_movement.status
    fill_in "Uid", with: @stock_movement.uid
    fill_in "Unity", with: @stock_movement.unity_id
    click_on "Update Stock movement"

    assert_text "Stock movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock movement" do
    visit stock_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock movement was successfully destroyed"
  end
end
