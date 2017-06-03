require 'test_helper'

class HellosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hello = hellos(:one)
  end

  test "should get index" do
    get hellos_url
    assert_response :success
  end

  test "should get new" do
    get new_hello_url
    assert_response :success
  end

  test "should create hello" do
    assert_difference('Hello.count') do
      post hellos_url, params: { hello: { notes: @hello.notes, title: @hello.title } }
    end

    assert_redirected_to hello_url(Hello.last)
  end

  test "should show hello" do
    get hello_url(@hello)
    assert_response :success
  end

  test "should get edit" do
    get edit_hello_url(@hello)
    assert_response :success
  end

  test "should update hello" do
    patch hello_url(@hello), params: { hello: { notes: @hello.notes, title: @hello.title } }
    assert_redirected_to hello_url(@hello)
  end

  test "should destroy hello" do
    assert_difference('Hello.count', -1) do
      delete hello_url(@hello)
    end

    assert_redirected_to hellos_url
  end
end
