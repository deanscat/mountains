require 'test_helper'

class MountainModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mountain_model = mountain_models(:one)
  end

  test "should get index" do
    get mountain_models_url
    assert_response :success
  end

  test "should get new" do
    get new_mountain_model_url
    assert_response :success
  end

  test "should create mountain_model" do
    assert_difference('MountainModel.count') do
      post mountain_models_url, params: { mountain_model: {  } }
    end

    assert_redirected_to mountain_model_url(MountainModel.last)
  end

  test "should show mountain_model" do
    get mountain_model_url(@mountain_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_mountain_model_url(@mountain_model)
    assert_response :success
  end

  test "should update mountain_model" do
    patch mountain_model_url(@mountain_model), params: { mountain_model: {  } }
    assert_redirected_to mountain_model_url(@mountain_model)
  end

  test "should destroy mountain_model" do
    assert_difference('MountainModel.count', -1) do
      delete mountain_model_url(@mountain_model)
    end

    assert_redirected_to mountain_models_url
  end
end
