require 'test_helper'

class ScientistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scientists_new_url
    assert_response :success
  end

end
