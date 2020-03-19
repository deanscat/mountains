require "application_system_test_case"

class MountainModelsTest < ApplicationSystemTestCase
  setup do
    @mountain_model = mountain_models(:one)
  end

  test "visiting the index" do
    visit mountain_models_url
    assert_selector "h1", text: "Mountain Models"
  end

  test "creating a Mountain model" do
    visit mountain_models_url
    click_on "New Mountain Model"

    click_on "Create Mountain model"

    assert_text "Mountain model was successfully created"
    click_on "Back"
  end

  test "updating a Mountain model" do
    visit mountain_models_url
    click_on "Edit", match: :first

    click_on "Update Mountain model"

    assert_text "Mountain model was successfully updated"
    click_on "Back"
  end

  test "destroying a Mountain model" do
    visit mountain_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mountain model was successfully destroyed"
  end
end
