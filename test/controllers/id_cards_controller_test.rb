require 'test_helper'

class IdCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @id_card = id_cards(:one)
  end

  test "should get index" do
    get id_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_id_card_url
    assert_response :success
  end

  test "should create id_card" do
    assert_difference('IdCard.count') do
      post id_cards_url, params: { id_card: { id_no: @id_card.id_no } }
    end

    assert_redirected_to id_card_url(IdCard.last)
  end

  test "should show id_card" do
    get id_card_url(@id_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_id_card_url(@id_card)
    assert_response :success
  end

  test "should update id_card" do
    patch id_card_url(@id_card), params: { id_card: { id_no: @id_card.id_no } }
    assert_redirected_to id_card_url(@id_card)
  end

  test "should destroy id_card" do
    assert_difference('IdCard.count', -1) do
      delete id_card_url(@id_card)
    end

    assert_redirected_to id_cards_url
  end
end
