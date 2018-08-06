require "application_system_test_case"

class MattressesTest < ApplicationSystemTestCase
  setup do
    @mattress = mattresses(:one)
  end

  test "visiting the index" do
    visit mattresses_url
    assert_selector "h1", text: "Mattresses"
  end

  test "creating a Mattress" do
    visit mattresses_url
    click_on "New Mattress"

    fill_in "Image", with: @mattress.image
    fill_in "Matresstitle", with: @mattress.matresstitle
    fill_in "Mattressdesc", with: @mattress.mattressdesc
    click_on "Create Mattress"

    assert_text "Mattress was successfully created"
    click_on "Back"
  end

  test "updating a Mattress" do
    visit mattresses_url
    click_on "Edit", match: :first

    fill_in "Image", with: @mattress.image
    fill_in "Matresstitle", with: @mattress.matresstitle
    fill_in "Mattressdesc", with: @mattress.mattressdesc
    click_on "Update Mattress"

    assert_text "Mattress was successfully updated"
    click_on "Back"
  end

  test "destroying a Mattress" do
    visit mattresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mattress was successfully destroyed"
  end
end
