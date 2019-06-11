class MaterialRecursosController < ApplicationController
  before_action :set_material_recurso, only: [:show, :edit, :update, :destroy]

  # GET /material_recursos
  # GET /material_recursos.json
  def index
    @material_recursos = MaterialRecurso.all
  end

  # GET /material_recursos/1
  # GET /material_recursos/1.json
  def show
  end

  # GET /material_recursos/new
  def new
    @material_recurso = MaterialRecurso.new
  end

  # GET /material_recursos/1/edit
  def edit
  end

  # POST /material_recursos
  # POST /material_recursos.json
  def create
    @material_recurso = MaterialRecurso.new(material_recurso_params)

    respond_to do |format|
      if @material_recurso.save
        format.html { redirect_to @material_recurso, notice: 'Material recurso was successfully created.' }
        format.json { render :show, status: :created, location: @material_recurso }
      else
        format.html { render :new }
        format.json { render json: @material_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_recursos/1
  # PATCH/PUT /material_recursos/1.json
  def update
    respond_to do |format|
      if @material_recurso.update(material_recurso_params)
        format.html { redirect_to @material_recurso, notice: 'Material recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_recurso }
      else
        format.html { render :edit }
        format.json { render json: @material_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_recursos/1
  # DELETE /material_recursos/1.json
  def destroy
    @material_recurso.destroy
    respond_to do |format|
      format.html { redirect_to material_recursos_url, notice: 'Material recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_recurso
      @material_recurso = MaterialRecurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_recurso_params
      params.require(:material_recurso).permit(:nomeEquipamento, :marca, :modelo, :paf_ecf_id)
    end
end
