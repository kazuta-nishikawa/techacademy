require 'test_helper'

class BodyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_datum = body_data(:one)
  end

  test "should get index" do
    get body_data_url
    assert_response :success
  end

  test "should get new" do
    get new_body_datum_url
    assert_response :success
  end

  test "should create body_datum" do
    assert_difference('BodyDatum.count') do
      post body_data_url, params: { body_datum: { date: @body_datum.date, fat: @body_datum.fat, weight: @body_datum.weight } }
    end

    assert_redirected_to body_datum_url(BodyDatum.last)
  end

  test "should show body_datum" do
    get body_datum_url(@body_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_datum_url(@body_datum)
    assert_response :success
  end

  test "should update body_datum" do
    patch body_datum_url(@body_datum), params: { body_datum: { date: @body_datum.date, fat: @body_datum.fat, weight: @body_datum.weight } }
    assert_redirected_to body_datum_url(@body_datum)
  end

  test "should destroy body_datum" do
    assert_difference('BodyDatum.count', -1) do
      delete body_datum_url(@body_datum)
    end

    assert_redirected_to body_data_url
  end
end
