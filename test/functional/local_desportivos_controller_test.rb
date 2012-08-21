require 'test_helper'

class LocalDesportivosControllerTest < ActionController::TestCase
  setup do
    @local_desportivo = local_desportivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_desportivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_desportivo" do
    assert_difference('LocalDesportivo.count') do
      post :create, local_desportivo: { desporto: @local_desportivo.desporto, detalhes: @local_desportivo.detalhes, gmaps: @local_desportivo.gmaps, latitude: @local_desportivo.latitude, longitude: @local_desportivo.longitude, morada: @local_desportivo.morada, nome: @local_desportivo.nome }
    end

    assert_redirected_to local_desportivo_path(assigns(:local_desportivo))
  end

  test "should show local_desportivo" do
    get :show, id: @local_desportivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_desportivo
    assert_response :success
  end

  test "should update local_desportivo" do
    put :update, id: @local_desportivo, local_desportivo: { desporto: @local_desportivo.desporto, detalhes: @local_desportivo.detalhes, gmaps: @local_desportivo.gmaps, latitude: @local_desportivo.latitude, longitude: @local_desportivo.longitude, morada: @local_desportivo.morada, nome: @local_desportivo.nome }
    assert_redirected_to local_desportivo_path(assigns(:local_desportivo))
  end

  test "should destroy local_desportivo" do
    assert_difference('LocalDesportivo.count', -1) do
      delete :destroy, id: @local_desportivo
    end

    assert_redirected_to local_desportivos_path
  end
end
