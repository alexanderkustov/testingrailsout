require 'test_helper'

class OutrosControllerTest < ActionController::TestCase
  setup do
    @outro = outros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outro" do
    assert_difference('Outro.count') do
      post :create, outro: { detalhes: @outro.detalhes, gmaps: @outro.gmaps, latitude: @outro.latitude, longitude: @outro.longitude, morada: @outro.morada, nome: @outro.nome }
    end

    assert_redirected_to outro_path(assigns(:outro))
  end

  test "should show outro" do
    get :show, id: @outro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outro
    assert_response :success
  end

  test "should update outro" do
    put :update, id: @outro, outro: { detalhes: @outro.detalhes, gmaps: @outro.gmaps, latitude: @outro.latitude, longitude: @outro.longitude, morada: @outro.morada, nome: @outro.nome }
    assert_redirected_to outro_path(assigns(:outro))
  end

  test "should destroy outro" do
    assert_difference('Outro.count', -1) do
      delete :destroy, id: @outro
    end

    assert_redirected_to outros_path
  end
end
