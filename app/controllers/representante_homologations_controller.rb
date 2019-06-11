class RepresentanteHomologationsController < ApplicationController
  before_action :set_representante_homologation, only: [:show, :edit, :update, :destroy]

  # GET /representante_homologations
  # GET /representante_homologations.json
  def index
    @representante_homologations = RepresentanteHomologation.all
  end

  # GET /representante_homologations/1
  # GET /representante_homologations/1.json
  def show
  end

  # GET /representante_homologations/new
  def new
    @representante_homologation = RepresentanteHomologation.new
  end

  # GET /representante_homologations/1/edit
  def edit
  end

  # POST /representante_homologations
  # POST /representante_homologations.json
  def create
    @representante_homologation = RepresentanteHomologation.new(representante_homologation_params)

    respond_to do |format|
      if @representante_homologation.save
        format.html { redirect_to @representante_homologation, notice: 'Representante homologation was successfully created.' }
        format.json { render :show, status: :created, location: @representante_homologation }
      else
        format.html { render :new }
        format.json { render json: @representante_homologation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representante_homologations/1
  # PATCH/PUT /representante_homologations/1.json
  def update
    respond_to do |format|
      if @representante_homologation.update(representante_homologation_params)
        format.html { redirect_to @representante_homologation, notice: 'Representante homologation was successfully updated.' }
        format.json { render :show, status: :ok, location: @representante_homologation }
      else
        format.html { render :edit }
        format.json { render json: @representante_homologation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representante_homologations/1
  # DELETE /representante_homologations/1.json
  def destroy
    @representante_homologation.destroy
    respond_to do |format|
      format.html { redirect_to representante_homologations_url, notice: 'Representante homologation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representante_homologation
      @representante_homologation = RepresentanteHomologation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representante_homologation_params
      params.require(:representante_homologation).permit(:homologation_id, :representante_empresa_id)
    end
end
