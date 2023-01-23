require "test_helper"

class SoundobjectlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soundobjectlist = soundobjectlists(:one)
  end

  test "should get index" do
    get soundobjectlists_url, as: :json
    assert_response :success
  end

  test "should create soundobjectlist" do
    assert_difference('Soundobjectlist.count') do
      post soundobjectlists_url, params: { soundobjectlist: { Author: @soundobjectlist.Author, Name: @soundobjectlist.Name, color: @soundobjectlist.color, description: @soundobjectlist.description, image: @soundobjectlist.image } }, as: :json
    end

    assert_response 201
  end

  test "should show soundobjectlist" do
    get soundobjectlist_url(@soundobjectlist), as: :json
    assert_response :success
  end

  test "should update soundobjectlist" do
    patch soundobjectlist_url(@soundobjectlist), params: { soundobjectlist: { Author: @soundobjectlist.Author, Name: @soundobjectlist.Name, color: @soundobjectlist.color, description: @soundobjectlist.description, image: @soundobjectlist.image } }, as: :json
    assert_response 200
  end

  test "should destroy soundobjectlist" do
    assert_difference('Soundobjectlist.count', -1) do
      delete soundobjectlist_url(@soundobjectlist), as: :json
    end

    assert_response 204
  end
end
