require "application_system_test_case"

class TweetersTest < ApplicationSystemTestCase
  setup do
    @tweeter = tweeters(:one)
  end

  test "visiting the index" do
    visit tweeters_url
    assert_selector "h1", text: "Tweeters"
  end

  test "creating a Tweeter" do
    visit tweeters_url
    click_on "New Tweeter"

    fill_in "Tweet", with: @tweeter.tweet
    click_on "Create Tweeter"

    assert_text "Tweeter was successfully created"
    click_on "Back"
  end

  test "updating a Tweeter" do
    visit tweeters_url
    click_on "Edit", match: :first

    fill_in "Tweet", with: @tweeter.tweet
    click_on "Update Tweeter"

    assert_text "Tweeter was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweeter" do
    visit tweeters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweeter was successfully destroyed"
  end
end
