require 'test_helper'

class CidadeAtuacaosControllerTest < ActionController::TestCase
  setup do
    @cidade_atuacao = cidade_atuacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cidade_atuacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cidade_atuacao" do
    assert_difference('CidadeAtuacao.count') do
      post :create, cidade_atuacao: { cidade_id: @cidade_atuacao.cidade_id, user_id: @cidade_atuacao.user_id }
    end

    assert_redirected_to cidade_atuacao_path(assigns(:cidade_atuacao))
  end

  test "should show cidade_atuacao" do
    get :show, id: @cidade_atuacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cidade_atuacao
    assert_response :success
  end

  test "should update cidade_atuacao" do
    patch :update, id: @cidade_atuacao, cidade_atuacao: { cidade_id: @cidade_atuacao.cidade_id, user_id: @cidade_atuacao.user_id }
    assert_redirected_to cidade_atuacao_path(assigns(:cidade_atuacao))
  end

  test "should destroy cidade_atuacao" do
    assert_difference('CidadeAtuacao.count', -1) do
      delete :destroy, id: @cidade_atuacao
    end

    assert_redirected_to cidade_atuacaos_path
  end
end
