require "test_helper"

class SoundobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soundobject = soundobjects(:one)
  end

  test "should get index" do
    get soundobjects_url, as: :json
    assert_response :success
  end

  test "should create soundobject" do
    assert_difference('Soundobject.count') do
      post soundobjects_url, params: { soundobject: { Author: @soundobject.Author, Name: @soundobject.Name, color: @soundobject.color, description: @soundobject.description, image: @soundobject.image } }, as: :json
    end

    assert_response 201
  end

  test "should show soundobject" do
    get soundobject_url(@soundobject), as: :json
    assert_response :success
  end

  test "should update soundobject" do
    patch soundobject_url(@soundobject), params: { soundobject: { Author: @soundobject.Author, Name: @soundobject.Name, color: @soundobject.color, description: @soundobject.description, image: @soundobject.image } }, as: :json
    assert_response 200
  end

  test "should destroy soundobject" do
    assert_difference('Soundobject.count', -1) do
      delete soundobject_url(@soundobject), as: :json
    end

    assert_response 204
  end
end
