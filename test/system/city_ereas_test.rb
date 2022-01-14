require "application_system_test_case"

class CityEreasTest < ApplicationSystemTestCase
  setup do
    @city_erea = city_ereas(:one)
  end

  test "visiting the index" do
    visit city_ereas_url
    assert_selector "h1", text: "City Ereas"
  end

  test "creating a City erea" do
    visit city_ereas_url
    click_on "New City Erea"

    fill_in "Slug", with: @city_erea.slug
    fill_in "Title", with: @city_erea.title
    fill_in "User", with: @city_erea.user_id
    click_on "Create City erea"

    assert_text "City erea was successfully created"
    click_on "Back"
  end

  test "updating a City erea" do
    visit city_ereas_url
    click_on "Edit", match: :first

    fill_in "Slug", with: @city_erea.slug
    fill_in "Title", with: @city_erea.title
    fill_in "User", with: @city_erea.user_id
    click_on "Update City erea"

    assert_text "City erea was successfully updated"
    click_on "Back"
  end

  test "destroying a City erea" do
    visit city_ereas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City erea was successfully destroyed"
  end
end
