require "application_system_test_case"

class ProgramsTest < ApplicationSystemTestCase
  setup do
    @program = programs(:one)
  end

  test "visiting the index" do
    visit programs_url
    assert_selector "h1", text: "Programs"
  end

  test "creating a Program" do
    visit programs_url
    click_on "New Program"

    fill_in "Program activity", with: @program.program_activity
    fill_in "Program date", with: @program.program_date
    fill_in "Program description", with: @program.program_description
    fill_in "Program name", with: @program.program_name
    fill_in "Program place", with: @program.program_place
    click_on "Create Program"

    assert_text "Program was successfully created"
    click_on "Back"
  end

  test "updating a Program" do
    visit programs_url
    click_on "Edit", match: :first

    fill_in "Program activity", with: @program.program_activity
    fill_in "Program date", with: @program.program_date
    fill_in "Program description", with: @program.program_description
    fill_in "Program name", with: @program.program_name
    fill_in "Program place", with: @program.program_place
    click_on "Update Program"

    assert_text "Program was successfully updated"
    click_on "Back"
  end

  test "destroying a Program" do
    visit programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program was successfully destroyed"
  end
end