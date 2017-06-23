require 'test_helper'

class TextnotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @textnote = textnotes(:one)
  end

  test "should get index" do
    get textnotes_url
    assert_response :success
  end

  test "should get new" do
    get new_textnote_url
    assert_response :success
  end

  test "should create textnote" do
    assert_difference('Textnote.count') do
      post textnotes_url, params: { textnote: { content: @textnote.content, usuario_id: @textnote.usuario_id } }
    end

    assert_redirected_to textnote_url(Textnote.last)
  end

  test "should show textnote" do
    get textnote_url(@textnote)
    assert_response :success
  end

  test "should get edit" do
    get edit_textnote_url(@textnote)
    assert_response :success
  end

  test "should update textnote" do
    patch textnote_url(@textnote), params: { textnote: { content: @textnote.content, usuario_id: @textnote.usuario_id } }
    assert_redirected_to textnote_url(@textnote)
  end

  test "should destroy textnote" do
    assert_difference('Textnote.count', -1) do
      delete textnote_url(@textnote)
    end

    assert_redirected_to textnotes_url
  end
end
