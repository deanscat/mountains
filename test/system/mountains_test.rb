require "application_system_test_case"

class MountainsTest < ApplicationSystemTestCase
  setup do
    @mountain = mountains(:one)
  end

  test "visiting the index" do
    visit mountains_url
    assert_selector "h1", text: "Mountains"
  end

  test "creating a Mountain" do
    visit mountains_url
    click_on "New Mountain"

    click_on "Create Mountain"

    assert_text "Mountain was successfully created"
    click_on "Back"
  end

  test "updating a Mountain" do
    visit mountains_url
    click_on "Edit", match: :first

    click_on "Update Mountain"

    assert_text "Mountain was successfully updated"
    click_on "Back"
  end

  test "destroying a Mountain" do
    visit mountains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mountain was successfully destroyed"
  end
end
