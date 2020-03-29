class RegisterControllerTest < ActionController::TestCase
  test "should get register form" do
    get :new

    assert_response :success
  end
end
