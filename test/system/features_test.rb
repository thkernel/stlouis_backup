require "application_system_test_case"

class FeaturesTest < ApplicationSystemTestCase
  setup do
    @feature = features(:one)
  end

  test "visiting the index" do
    visit features_url
    assert_selector "h1", text: "Features"
  end

  test "creating a Feature" do
    visit features_url
    click_on "New Feature"

    fill_in "Description", with: @feature.description
    fill_in "Name", with: @feature.name
    fill_in "Status", with: @feature.status
    fill_in "Subject class", with: @feature.subject_class
    fill_in "Uid", with: @feature.uid
    click_on "Create Feature"

    assert_text "Feature was successfully created"
    click_on "Back"
  end

  test "updating a Feature" do
    visit features_url
    click_on "Edit", match: :first

    fill_in "Description", with: @feature.description
    fill_in "Name", with: @feature.name
    fill_in "Status", with: @feature.status
    fill_in "Subject class", with: @feature.subject_class
    fill_in "Uid", with: @feature.uid
    click_on "Update Feature"

    assert_text "Feature was successfully updated"
    click_on "Back"
  end

  test "destroying a Feature" do
    visit features_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feature was successfully destroyed"
  end
end
