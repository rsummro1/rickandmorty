require 'test_helper'

class RickandMortiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rickand_morty = rickand_morties(:one)
  end

  test "should get index" do
    get rickand_morties_url
    assert_response :success
  end

  test "should get new" do
    get new_rickand_morty_url
    assert_response :success
  end

  test "should create rickand_morty" do
    assert_difference('RickandMorty.count') do
      post rickand_morties_url, params: { rickand_morty: { comment: @rickand_morty.comment } }
    end

    assert_redirected_to rickand_morty_url(RickandMorty.last)
  end

  test "should show rickand_morty" do
    get rickand_morty_url(@rickand_morty)
    assert_response :success
  end

  test "should get edit" do
    get edit_rickand_morty_url(@rickand_morty)
    assert_response :success
  end

  test "should update rickand_morty" do
    patch rickand_morty_url(@rickand_morty), params: { rickand_morty: { comment: @rickand_morty.comment } }
    assert_redirected_to rickand_morty_url(@rickand_morty)
  end

  test "should destroy rickand_morty" do
    assert_difference('RickandMorty.count', -1) do
      delete rickand_morty_url(@rickand_morty)
    end

    assert_redirected_to rickand_morties_url
  end
end
