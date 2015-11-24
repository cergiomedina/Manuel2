require 'test_helper'

class PreguntaControllerTest < ActionController::TestCase
  setup do
    @preguntum = pregunta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preguntum" do
    assert_difference('Preguntum.count') do
      post :create, preguntum: { pregunta_descripcion: @preguntum.pregunta_descripcion, pregunta_enunciado: @preguntum.pregunta_enunciado, pregunta_id: @preguntum.pregunta_id, pregunta_opciones: @preguntum.pregunta_opciones }
    end

    assert_redirected_to preguntum_path(assigns(:preguntum))
  end

  test "should show preguntum" do
    get :show, id: @preguntum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preguntum
    assert_response :success
  end

  test "should update preguntum" do
    patch :update, id: @preguntum, preguntum: { pregunta_descripcion: @preguntum.pregunta_descripcion, pregunta_enunciado: @preguntum.pregunta_enunciado, pregunta_id: @preguntum.pregunta_id, pregunta_opciones: @preguntum.pregunta_opciones }
    assert_redirected_to preguntum_path(assigns(:preguntum))
  end

  test "should destroy preguntum" do
    assert_difference('Preguntum.count', -1) do
      delete :destroy, id: @preguntum
    end

    assert_redirected_to pregunta_path
  end
end
