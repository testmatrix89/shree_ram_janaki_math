require "application_system_test_case"

class SofasTest < ApplicationSystemTestCase
  setup do
    @sofa = sofas(:one)
  end

  test "visiting the index" do
    visit sofas_url
    assert_selector "h1", text: "Sofas"
  end

  test "creating a Sofa" do
    visit sofas_url
    click_on "New Sofa"

    fill_in "Image", with: @sofa.image
    fill_in "Sofadesc", with: @sofa.sofadesc
    fill_in "Sofatitle", with: @sofa.sofatitle
    click_on "Create Sofa"

    assert_text "Sofa was successfully created"
    click_on "Back"
  end

  test "updating a Sofa" do
    visit sofas_url
    click_on "Edit", match: :first

    fill_in "Image", with: @sofa.image
    fill_in "Sofadesc", with: @sofa.sofadesc
    fill_in "Sofatitle", with: @sofa.sofatitle
    click_on "Update Sofa"

    assert_text "Sofa was successfully updated"
    click_on "Back"
  end

  test "destroying a Sofa" do
    visit sofas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sofa was successfully destroyed"
  end
end
