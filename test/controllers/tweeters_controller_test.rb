require "test_helper"

class TweetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweeter = tweeters(:one)
  end

  test "should get index" do
    get tweeters_url
    assert_response :success
  end

  test "should get new" do
    get new_tweeter_url
    assert_response :success
  end

  test "should create tweeter" do
    assert_difference('Tweeter.count') do
      post tweeters_url, params: { tweeter: { tweet: @tweeter.tweet } }
    end

    assert_redirected_to tweeter_url(Tweeter.last)
  end

  test "should show tweeter" do
    get tweeter_url(@tweeter)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweeter_url(@tweeter)
    assert_response :success
  end

  test "should update tweeter" do
    patch tweeter_url(@tweeter), params: { tweeter: { tweet: @tweeter.tweet } }
    assert_redirected_to tweeter_url(@tweeter)
  end

  test "should destroy tweeter" do
    assert_difference('Tweeter.count', -1) do
      delete tweeter_url(@tweeter)
    end

    assert_redirected_to tweeters_url
  end
end
