require "application_system_test_case"

class DiningtablesTest < ApplicationSystemTestCase
  setup do
    @diningtable = diningtables(:one)
  end

  test "visiting the index" do
    visit diningtables_url
    assert_selector "h1", text: "Diningtables"
  end

  test "creating a Diningtable" do
    visit diningtables_url
    click_on "New Diningtable"

    fill_in "Diningdesc", with: @diningtable.diningdesc
    fill_in "Diningtitle", with: @diningtable.diningtitle
    fill_in "Image", with: @diningtable.image
    click_on "Create Diningtable"

    assert_text "Diningtable was successfully created"
    click_on "Back"
  end

  test "updating a Diningtable" do
    visit diningtables_url
    click_on "Edit", match: :first

    fill_in "Diningdesc", with: @diningtable.diningdesc
    fill_in "Diningtitle", with: @diningtable.diningtitle
    fill_in "Image", with: @diningtable.image
    click_on "Update Diningtable"

    assert_text "Diningtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Diningtable" do
    visit diningtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diningtable was successfully destroyed"
  end
end
