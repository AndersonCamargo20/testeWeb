class RepresentanteEmpresasController < ApplicationController
  before_action :set_representante_empresa, only: [:show, :edit, :update, :destroy]

  # GET /representante_empresas
  # GET /representante_empresas.json
  def index
    @representante_empresas = RepresentanteEmpresa.all
  end

  # GET /representante_empresas/1
  # GET /representante_empresas/1.json
  def show
  end

  # GET /representante_empresas/new
  def new
    @representante_empresa = RepresentanteEmpresa.new
  end

  # GET /representante_empresas/1/edit
  def edit
  end

  # POST /representante_empresas
  # POST /representante_empresas.json
  def create
    @representante_empresa = RepresentanteEmpresa.new(representante_empresa_params)

    respond_to do |format|
      if @representante_empresa.save
        format.html { redirect_to @representante_empresa, notice: 'Representante empresa was successfully created.' }
        format.json { render :show, status: :created, location: @representante_empresa }
      else
        format.html { render :new }
        format.json { render json: @representante_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representante_empresas/1
  # PATCH/PUT /representante_empresas/1.json
  def update
    respond_to do |format|
      if @representante_empresa.update(representante_empresa_params)
        format.html { redirect_to @representante_empresa, notice: 'Representante empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @representante_empresa }
      else
        format.html { render :edit }
        format.json { render json: @representante_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representante_empresas/1
  # DELETE /representante_empresas/1.json
  def destroy
    @representante_empresa.destroy
    respond_to do |format|
      format.html { redirect_to representante_empresas_url, notice: 'Representante empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representante_empresa
      @representante_empresa = RepresentanteEmpresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representante_empresa_params
      params.require(:representante_empresa).permit(:nome, :funcao, :compani_id)
    end
end
