class GirisFormsController < ApplicationController
  before_action :set_giris_form, only: [:show, :edit, :update, :destroy]

  # GET /giris_forms
  # GET /giris_forms.json
  def index
    @giris_forms = GirisForm.all
  end

  # GET /giris_forms/1
  # GET /giris_forms/1.json
  def show
  end

  # GET /giris_forms/new
  def new
    @giris_form = GirisForm.new
  end

  # GET /giris_forms/1/edit
  def edit
  end

  # POST /giris_forms
  # POST /giris_forms.json
  def create
    @giris_form = GirisForm.new(giris_form_params)

    respond_to do |format|
      if @giris_form.save
        format.html { redirect_to @giris_form, notice: 'Giris form was successfully created.' }
        format.json { render :show, status: :created, location: @giris_form }
      else
        format.html { render :new }
        format.json { render json: @giris_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giris_forms/1
  # PATCH/PUT /giris_forms/1.json
  def update
    respond_to do |format|
      if @giris_form.update(giris_form_params)
        format.html { redirect_to @giris_form, notice: 'Giris form was successfully updated.' }
        format.json { render :show, status: :ok, location: @giris_form }
      else
        format.html { render :edit }
        format.json { render json: @giris_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giris_forms/1
  # DELETE /giris_forms/1.json
  def destroy
    @giris_form.destroy
    respond_to do |format|
      format.html { redirect_to giris_forms_url, notice: 'Giris form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giris_form
      @giris_form = GirisForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def giris_form_params
      params.require(:giris_form).permit(:ilk_basvuru_tarihi, :mc_destek_aliyor, :iletisime_gecen, :iletisime_gecme_yolu, :notlar)
    end
end
