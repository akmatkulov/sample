require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  #должен попасть на страницу home
  test "should get home" do
    #запрос GET методу home
    get static_pages_home_url
    #должен вернутся код состояние 200ок или success
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  #должен попасть на страницу help
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  #должен попасть на страницу about
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
