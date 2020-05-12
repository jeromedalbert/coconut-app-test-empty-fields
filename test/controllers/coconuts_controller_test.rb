require 'test_helper'

class CoconutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coconut = coconuts(:one)
  end

  test "should get index" do
    get coconuts_url
    assert_response :success
  end

  test "should get new" do
    get new_coconut_url
    assert_response :success
  end

  test "should create coconut" do
    assert_difference('Coconut.count') do
      post coconuts_url, params: { coconut: { diameter: @coconut.diameter, name: @coconut.name, weight: @coconut.weight } }
    end

    assert_redirected_to coconut_url(Coconut.last)
  end

  test "should show coconut" do
    get coconut_url(@coconut)
    assert_response :success
  end

  test "should get edit" do
    get edit_coconut_url(@coconut)
    assert_response :success
  end

  test "should update coconut" do
    patch coconut_url(@coconut), params: { coconut: { diameter: @coconut.diameter, name: @coconut.name, weight: @coconut.weight } }
    assert_redirected_to coconut_url(@coconut)
  end

  test "should destroy coconut" do
    assert_difference('Coconut.count', -1) do
      delete coconut_url(@coconut)
    end

    assert_redirected_to coconuts_url
  end
end
