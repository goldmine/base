require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  def setup
    @base_title = "BaseApp"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "首页 | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "帮助 | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "关于 | #{@base_title}"
  end


end
