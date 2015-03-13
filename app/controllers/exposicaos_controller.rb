class ExposicaosController < ApplicationController
  before_action :set_exposicao, only: [:show, :edit, :update, :destroy]

  # GET /exposicaos
  # GET /exposicaos.json
  def index
    @exposicaos = Exposicao.all
  end

  # GET /exposicaos/1
  # GET /exposicaos/1.json
  def show
  end

  # GET /exposicaos/new
  def new
    @exposicao = Exposicao.new
  end

  # GET /exposicaos/1/edit
  def edit
  end

  # POST /exposicaos
  # POST /exposicaos.json
  def create
    @exposicao = Exposicao.new(exposicao_params)

    respond_to do |format|
      if @exposicao.save
        format.html { redirect_to @exposicao, notice: 'Exposicao was successfully created.' }
        format.json { render :show, status: :created, location: @exposicao }
      else
        format.html { render :new }
        format.json { render json: @exposicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exposicaos/1
  # PATCH/PUT /exposicaos/1.json
  def update
    respond_to do |format|
      if @exposicao.update(exposicao_params)
        format.html { redirect_to @exposicao, notice: 'Exposicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @exposicao }
      else
        format.html { render :edit }
        format.json { render json: @exposicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exposicaos/1
  # DELETE /exposicaos/1.json
  def destroy
    @exposicao.destroy
    respond_to do |format|
      format.html { redirect_to exposicaos_url, notice: 'Exposicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exposicao
      @exposicao = Exposicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exposicao_params
      params.require(:exposicao).permit(:pais, :cidade, :datas)
    end
end
