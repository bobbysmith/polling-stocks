require 'test_helper'

class PersonsControllerTest < ActionController::TestCase
  test "should get stocks" do
    get :stocks
    assert_response :success
  end

end
