require 'test_helper'

class GigRequestsControllerTest < ActionController::TestCase
  setup do
    @gig_request = gig_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gig_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gig_request" do
    assert_difference('GigRequest.count') do
      post :create, gig_request: { description: @gig_request.description }
    end

    assert_redirected_to gig_request_path(assigns(:gig_request))
  end

  test "should show gig_request" do
    get :show, id: @gig_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gig_request
    assert_response :success
  end

  test "should update gig_request" do
    put :update, id: @gig_request, gig_request: { description: @gig_request.description }
    assert_redirected_to gig_request_path(assigns(:gig_request))
  end

  test "should destroy gig_request" do
    assert_difference('GigRequest.count', -1) do
      delete :destroy, id: @gig_request
    end

    assert_redirected_to gig_requests_path
  end
end
