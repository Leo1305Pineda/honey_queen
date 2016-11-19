class ModelosController < ApplicationController
  before_action :set_modelo, only: [:show, :edit, :update, :destroy]

  # GET /modelos
  # GET /modelos.json
  def index
    @modelos = Modelo.all
  end

  # GET /modelos/1
  # GET /modelos/1.json
  def show
  end

  # POST /modelos
  # POST /modelos.json
  def create
    @modelo = Modelo.new(modelo_params)
    if @modelo.save
      render :show, status: :created, location: @modelo
    else
      render json: @modelo.errors, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /modelos/1
  # PATCH/PUT /modelos/1.json
  def update
    if @modelo.update(modelo_params)
      render :show, status: :ok, location: @modelo
    else
      render json: @modelo.errors, status: :unprocessable_entity 
    end
  end

  # DELETE /modelos/1
  # DELETE /modelos/1.json
  def destroy
    @modelo.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modelo
      @modelo = Modelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modelo_params
      params.require(:modelo).permit(:modelo, :marca_id)
    end
end
