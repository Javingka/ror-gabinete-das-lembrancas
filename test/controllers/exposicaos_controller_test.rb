require 'test_helper'

class ExposicaosControllerTest < ActionController::TestCase
  setup do
    @exposicao = exposicaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exposicaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exposicao" do
    assert_difference('Exposicao.count') do
      post :create, exposicao: { cidade: @exposicao.cidade, datas: @exposicao.datas, pais: @exposicao.pais }
    end

    assert_redirected_to exposicao_path(assigns(:exposicao))
  end

  test "should show exposicao" do
    get :show, id: @exposicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exposicao
    assert_response :success
  end

  test "should update exposicao" do
    patch :update, id: @exposicao, exposicao: { cidade: @exposicao.cidade, datas: @exposicao.datas, pais: @exposicao.pais }
    assert_redirected_to exposicao_path(assigns(:exposicao))
  end

  test "should destroy exposicao" do
    assert_difference('Exposicao.count', -1) do
      delete :destroy, id: @exposicao
    end

    assert_redirected_to exposicaos_path
  end
end
