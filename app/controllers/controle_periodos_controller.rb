class ControlePeriodosController < ApplicationController
  before_action :set_controle_periodo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  @viewMenu = nil
  def index
    @controle_periodos = ControlePeriodo.order("id desc")
    @total = @controle_periodos.size
  end

  def show
  end

  def new
    @controle_periodo = ControlePeriodo.new
  end

  def edit
  end

  def create
    @controle_periodo = ControlePeriodo.new(controle_periodo_params)

    if @controle_periodo.save
      redirect_to controle_periodos_path
    else
      render :new
    end
  end

  def update
    if @controle_periodo.update(controle_periodo_params)
      redirect_to controle_periodos_path
    else
      render :edit
    end
  end

  def destroy
    @controle_periodo.destroy
    redirect_to controle_periodos_path
  end

  private
    def set_controle_periodo
      @controle_periodo = ControlePeriodo.find(params[:id])
    end

    def controle_periodo_params
      params.require(:controle_periodo).permit(:data, :matutinoInicial, :matutinoFinal, :vespertinoInicial, :vespertinoFinal, :noturnoInicial, :noturnoFinal, :homologation_id)
    end
end
