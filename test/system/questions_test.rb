require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    take_screenshot
    assert_selector "h1", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking question with ? yields silly response" do
    visit ask_url
    fill_in "question", with: "How are you?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying going to work yields great response" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
  end
end


