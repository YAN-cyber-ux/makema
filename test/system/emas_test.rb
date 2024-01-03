require "application_system_test_case"

class EmasTest < ApplicationSystemTestCase
  setup do
    @ema = emas(:one)
  end

  test "visiting the index" do
    visit emas_url
    assert_selector "h1", text: "Emas"
  end

  test "should create ema" do
    visit emas_url
    click_on "New ema"

    fill_in "Body", with: @ema.body
    fill_in "Name", with: @ema.name
    click_on "Create Ema"

    assert_text "Ema was successfully created"
    click_on "Back"
  end

  test "should update Ema" do
    visit ema_url(@ema)
    click_on "Edit this ema", match: :first

    fill_in "Body", with: @ema.body
    fill_in "Name", with: @ema.name
    click_on "Update Ema"

    assert_text "Ema was successfully updated"
    click_on "Back"
  end

  test "should destroy Ema" do
    visit ema_url(@ema)
    click_on "Destroy this ema", match: :first

    assert_text "Ema was successfully destroyed"
  end
end
