class CompanisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_compani, only: [:show, :edit, :update, :destroy]
  @viewMenu = nil
  def index
    @companis = Compani.all
    @total = @companis.size
  end

  def show
  end

  def new
    @compani = Compani.new
    @compani.build_endereco
  end

  def edit
  end

  def create
    @compani = Compani.new(compani_params)
    p "IMPRIMINDO O CNPJ"
    p @compani.cnpj
    if @compani.save
      redirect_to companis_path
    else
      render :new
    end
  end

  def update
    p "IMPRIMINDO O CNPJ"
    p @compani.cnpj
    if @compani.update(compani_params)
      redirect_to companis_path
    else
      render :edit
    end
  end

  def destroy
    @compani.destroy
    redirect_to companis_path
  end

  private
    def set_compani
      @compani = Compani.find(params[:id])
    end

    def compani_params
      params.require(:compani).permit(:razaoSocial, :nomeFantasia, :cnpj, :ie, :im, :endereco_id, endereco_attributes: [:id, :rua, :bairro, :cidade, :estado ])
    end
end
