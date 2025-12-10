require "test_helper"

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
  end
  test "should get new" do
    get feedbacks_new_url
    assert_response :success
  end

  test "should get create" do
    get feedbacks_create_url
    assert_response :success
  end
end
