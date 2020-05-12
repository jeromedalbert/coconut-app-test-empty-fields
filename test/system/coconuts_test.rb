require "application_system_test_case"

class CoconutsTest < ApplicationSystemTestCase
  setup do
    @coconut = coconuts(:one)
  end

  test "visiting the index" do
    visit coconuts_url
    assert_selector "h1", text: "Coconuts"
  end

  test "creating a Coconut" do
    visit coconuts_url
    click_on "New Coconut"

    fill_in "Diameter", with: @coconut.diameter
    fill_in "Name", with: @coconut.name
    fill_in "Weight", with: @coconut.weight
    click_on "Create Coconut"

    assert_text "Coconut was successfully created"
    click_on "Back"
  end

  test "updating a Coconut" do
    visit coconuts_url
    click_on "Edit", match: :first

    fill_in "Diameter", with: @coconut.diameter
    fill_in "Name", with: @coconut.name
    fill_in "Weight", with: @coconut.weight
    click_on "Update Coconut"

    assert_text "Coconut was successfully updated"
    click_on "Back"
  end

  test "destroying a Coconut" do
    visit coconuts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coconut was successfully destroyed"
  end
end
