require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get infinitos_monos" do
    get :infinitos_monos
    assert_response :success
  end

  test "should get rio_de_contas" do
    get :rio_de_contas
    assert_response :success
  end

  test "should get palmeiras" do
    get :palmeiras
    assert_response :success
  end

  test "should get andarai" do
    get :andarai
    assert_response :success
  end

  test "should get morro_do_chapeu" do
    get :morro_do_chapeu
    assert_response :success
  end

end
