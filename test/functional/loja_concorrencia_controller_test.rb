require 'test_helper'

class LojaConcorrenciaControllerTest < ActionController::TestCase
  setup do
    @loja_concorrencium = loja_concorrencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loja_concorrencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loja_concorrencium" do
    assert_difference('LojaConcorrencium.count') do
      post :create, loja_concorrencium: { categoria: @loja_concorrencium.categoria, gmaps: @loja_concorrencium.gmaps, latitude: @loja_concorrencium.latitude, longitude: @loja_concorrencium.longitude, morada: @loja_concorrencium.morada, nome: @loja_concorrencium.nome }
    end

    assert_redirected_to loja_concorrencium_path(assigns(:loja_concorrencium))
  end

  test "should show loja_concorrencium" do
    get :show, id: @loja_concorrencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loja_concorrencium
    assert_response :success
  end

  test "should update loja_concorrencium" do
    put :update, id: @loja_concorrencium, loja_concorrencium: { categoria: @loja_concorrencium.categoria, gmaps: @loja_concorrencium.gmaps, latitude: @loja_concorrencium.latitude, longitude: @loja_concorrencium.longitude, morada: @loja_concorrencium.morada, nome: @loja_concorrencium.nome }
    assert_redirected_to loja_concorrencium_path(assigns(:loja_concorrencium))
  end

  test "should destroy loja_concorrencium" do
    assert_difference('LojaConcorrencium.count', -1) do
      delete :destroy, id: @loja_concorrencium
    end

    assert_redirected_to loja_concorrencia_path
  end
end
