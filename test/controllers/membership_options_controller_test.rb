require 'test_helper'

class MembershipOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membership_option = membership_options(:one)
  end

  test "should get index" do
    get membership_options_url
    assert_response :success
  end

  test "should get new" do
    get new_membership_option_url
    assert_response :success
  end

  test "should create membership_option" do
    assert_difference('MembershipOption.count') do
      post membership_options_url, params: { membership_option: { description: @membership_option.description, name: @membership_option.name, price: @membership_option.price } }
    end

    assert_redirected_to membership_option_url(MembershipOption.last)
  end

  test "should show membership_option" do
    get membership_option_url(@membership_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_membership_option_url(@membership_option)
    assert_response :success
  end

  test "should update membership_option" do
    patch membership_option_url(@membership_option), params: { membership_option: { description: @membership_option.description, name: @membership_option.name, price: @membership_option.price } }
    assert_redirected_to membership_option_url(@membership_option)
  end

  test "should destroy membership_option" do
    assert_difference('MembershipOption.count', -1) do
      delete membership_option_url(@membership_option)
    end

    assert_redirected_to membership_options_url
  end
end
