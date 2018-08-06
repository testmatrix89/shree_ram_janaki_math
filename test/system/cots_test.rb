require "application_system_test_case"

class CotsTest < ApplicationSystemTestCase
  setup do
    @cot = cots(:one)
  end

  test "visiting the index" do
    visit cots_url
    assert_selector "h1", text: "Cots"
  end

  test "creating a Cot" do
    visit cots_url
    click_on "New Cot"

    fill_in "Cotdesc", with: @cot.cotdesc
    fill_in "Cottitle", with: @cot.cottitle
    click_on "Create Cot"

    assert_text "Cot was successfully created"
    click_on "Back"
  end

  test "updating a Cot" do
    visit cots_url
    click_on "Edit", match: :first

    fill_in "Cotdesc", with: @cot.cotdesc
    fill_in "Cottitle", with: @cot.cottitle
    click_on "Update Cot"

    assert_text "Cot was successfully updated"
    click_on "Back"
  end

  test "destroying a Cot" do
    visit cots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cot was successfully destroyed"
  end
end
