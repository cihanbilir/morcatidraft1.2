require 'test_helper'

class GirisFormsControllerTest < ActionController::TestCase
  setup do
    @giris_form = giris_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:giris_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create giris_form" do
    assert_difference('GirisForm.count') do
      post :create, giris_form: { iletisime_gecen: @giris_form.iletisime_gecen, iletisime_gecme_yolu: @giris_form.iletisime_gecme_yolu, ilk_basvuru_tarihi: @giris_form.ilk_basvuru_tarihi, mc_destek_aliyor: @giris_form.mc_destek_aliyor, notlar: @giris_form.notlar }
    end

    assert_redirected_to giris_form_path(assigns(:giris_form))
  end

  test "should show giris_form" do
    get :show, id: @giris_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @giris_form
    assert_response :success
  end

  test "should update giris_form" do
    patch :update, id: @giris_form, giris_form: { iletisime_gecen: @giris_form.iletisime_gecen, iletisime_gecme_yolu: @giris_form.iletisime_gecme_yolu, ilk_basvuru_tarihi: @giris_form.ilk_basvuru_tarihi, mc_destek_aliyor: @giris_form.mc_destek_aliyor, notlar: @giris_form.notlar }
    assert_redirected_to giris_form_path(assigns(:giris_form))
  end

  test "should destroy giris_form" do
    assert_difference('GirisForm.count', -1) do
      delete :destroy, id: @giris_form
    end

    assert_redirected_to giris_forms_path
  end
end
