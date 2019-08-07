require "application_system_test_case"

class OpeningHoursTest < ApplicationSystemTestCase
  setup do
    @opening_hour = opening_hours(:one)
  end

  test "visiting the index" do
    visit opening_hours_url
    assert_selector "h1", text: "Opening Hours"
  end

  test "creating a Opening hour" do
    visit opening_hours_url
    click_on "New Opening Hour"

    fill_in "Close", with: @opening_hour.close
    fill_in "Day", with: @opening_hour.day
    fill_in "Open", with: @opening_hour.open
    fill_in "Shop", with: @opening_hour.shop_id
    click_on "Create Opening hour"

    assert_text "Opening hour was successfully created"
    click_on "Back"
  end

  test "updating a Opening hour" do
    visit opening_hours_url
    click_on "Edit", match: :first

    fill_in "Close", with: @opening_hour.close
    fill_in "Day", with: @opening_hour.day
    fill_in "Open", with: @opening_hour.open
    fill_in "Shop", with: @opening_hour.shop_id
    click_on "Update Opening hour"

    assert_text "Opening hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Opening hour" do
    visit opening_hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opening hour was successfully destroyed"
  end
end
