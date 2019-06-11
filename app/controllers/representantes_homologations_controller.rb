class RepresentantesHomologationsController < ApplicationController
  before_action :set_representantes_homologation, only: [:show, :edit, :update, :destroy]

  # GET /representantes_homologations
  # GET /representantes_homologations.json
  def index
    @representantes_homologations = RepresentantesHomologation.all
  end

  # GET /representantes_homologations/1
  # GET /representantes_homologations/1.json
  def show
  end

  # GET /representantes_homologations/new
  def new
    @representantes_homologation = RepresentantesHomologation.new
  end

  # GET /representantes_homologations/1/edit
  def edit
  end

  # POST /representantes_homologations
  # POST /representantes_homologations.json
  def create
    @representantes_homologation = RepresentantesHomologation.new(representantes_homologation_params)

    respond_to do |format|
      if @representantes_homologation.save
        format.html { redirect_to @representantes_homologation, notice: 'Representantes homologation was successfully created.' }
        format.json { render :show, status: :created, location: @representantes_homologation }
      else
        format.html { render :new }
        format.json { render json: @representantes_homologation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantes_homologations/1
  # PATCH/PUT /representantes_homologations/1.json
  def update
    respond_to do |format|
      if @representantes_homologation.update(representantes_homologation_params)
        format.html { redirect_to @representantes_homologation, notice: 'Representantes homologation was successfully updated.' }
        format.json { render :show, status: :ok, location: @representantes_homologation }
      else
        format.html { render :edit }
        format.json { render json: @representantes_homologation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantes_homologations/1
  # DELETE /representantes_homologations/1.json
  def destroy
    @representantes_homologation.destroy
    respond_to do |format|
      format.html { redirect_to representantes_homologations_url, notice: 'Representantes homologation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representantes_homologation
      @representantes_homologation = RepresentantesHomologation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representantes_homologation_params
      params.require(:representantes_homologation).permit(:homologation_id, :representante_empresas_id)
    end
end
