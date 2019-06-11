class HomologationsController < ApplicationController
  before_action :set_homologation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  @viewMenu = nil
  def index
    @homologations = Homologation.order("id DESC")
    @total = @homologations.size
  end

  def show
  end

  def new
    @homologation = Homologation.new
  end

  def edit
  end

  def create
    @homologation = Homologation.new(homologation_params)

    if @homologation.save
      redirect_to homologations_path
    else
     render :new
    end
  end

  def update
    if @homologation.update(homologation_params)
      redirect_to homologations_path
    else
      render :edit
    end
  end

  def destroy
    @homologation.destroy
    redirect_to homologations_path
  end

  private
    def set_homologation
      @homologation = Homologation.find(params[:id])
    end

    def homologation_params
      params.require(:homologation).permit(:titulo, :compani_id)
    end
end
