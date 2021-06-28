require "application_system_test_case"

class BodyDataTest < ApplicationSystemTestCase
  setup do
    @body_datum = body_data(:one)
  end

  test "visiting the index" do
    visit body_data_url
    assert_selector "h1", text: "Body Data"
  end

  test "creating a Body datum" do
    visit body_data_url
    click_on "New Body Datum"

    fill_in "Date", with: @body_datum.date
    fill_in "Fat", with: @body_datum.fat
    fill_in "Weight", with: @body_datum.weight
    click_on "Create Body datum"

    assert_text "Body datum was successfully created"
    click_on "Back"
  end

  test "updating a Body datum" do
    visit body_data_url
    click_on "Edit", match: :first

    fill_in "Date", with: @body_datum.date
    fill_in "Fat", with: @body_datum.fat
    fill_in "Weight", with: @body_datum.weight
    click_on "Update Body datum"

    assert_text "Body datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Body datum" do
    visit body_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Body datum was successfully destroyed"
  end
end
