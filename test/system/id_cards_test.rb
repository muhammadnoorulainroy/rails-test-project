require "application_system_test_case"

class IdCardsTest < ApplicationSystemTestCase
  setup do
    @id_card = id_cards(:one)
  end

  test "visiting the index" do
    visit id_cards_url
    assert_selector "h1", text: "Id Cards"
  end

  test "creating a Id card" do
    visit id_cards_url
    click_on "New Id Card"

    fill_in "Id no", with: @id_card.id_no
    click_on "Create Id card"

    assert_text "Id card was successfully created"
    click_on "Back"
  end

  test "updating a Id card" do
    visit id_cards_url
    click_on "Edit", match: :first

    fill_in "Id no", with: @id_card.id_no
    click_on "Update Id card"

    assert_text "Id card was successfully updated"
    click_on "Back"
  end

  test "destroying a Id card" do
    visit id_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Id card was successfully destroyed"
  end
end
