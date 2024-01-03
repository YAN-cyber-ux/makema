require "test_helper"

class EmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ema = emas(:one)
  end

  test "should get index" do
    get emas_url
    assert_response :success
  end

  test "should get new" do
    get new_ema_url
    assert_response :success
  end

  test "should create ema" do
    assert_difference("Ema.count") do
      post emas_url, params: { ema: { body: @ema.body, name: @ema.name } }
    end

    assert_redirected_to ema_url(Ema.last)
  end

  test "should show ema" do
    get ema_url(@ema)
    assert_response :success
  end

  test "should get edit" do
    get edit_ema_url(@ema)
    assert_response :success
  end

  test "should update ema" do
    patch ema_url(@ema), params: { ema: { body: @ema.body, name: @ema.name } }
    assert_redirected_to ema_url(@ema)
  end

  test "should destroy ema" do
    assert_difference("Ema.count", -1) do
      delete ema_url(@ema)
    end

    assert_redirected_to emas_url
  end
end
