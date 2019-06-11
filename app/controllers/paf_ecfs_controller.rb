class PafEcfsController < ApplicationController
  before_action :set_paf_ecf, only: [:show, :edit, :update, :destroy]
  @viewMenu = nil
  def index
    @paf_ecfs = PafEcf.all
    @total = @paf_ecfs.size
  end

  def show
  end

  def new
    @paf_ecf = PafEcf.new
  end

  def edit
  end

  def create
    @paf_ecf = PafEcf.new(paf_ecf_params)
    if @paf_ecf.save
      redirect_to paf_ecfs_path
    else
      redirect_to :new
    end
  end

  def update
    if @paf_ecf.update(paf_ecf_params)
      redirect_to paf_ecfs_path
    else
      render :edit
    end
  end

  def destroy
    @paf_ecf.destroy
    redirect_to paf_ecfs_path
  end

  private
    def set_paf_ecf
      @paf_ecf = PafEcf.find(params[:id])
    end
    
    def paf_ecf_params
      params.require(:paf_ecf).permit(
        :nome_comercial, 
        :idetificacao_versao, 
        :identificacao_executavel_principal, 
        :linguagem, 
        :x_linux, 
        :x_mac, 
        :x_windows, 
        :gerenciador_db, 
        :tipo_desenvolvimento, 
        :tipo_desenvolvimento, 
        :arquivo_sintegra, 
        :integracao_paf, 
        :x_imp_concomitante, 
        :x_imp_nao_concomitante, 
        :x_imp_prevenda, :x_imp_conta_cliente, :x_imp_dav_sem_impressao, 
        :x_imp_dav_impressora_nao_fiscal, :x__imp_dav_impressora_fiscal, 
        :tratamento_interrupcao, :x_perfil_v, :x_perfil_t, 
        :x_perfil_w ,:x_apl_pedagio,:x_apl_passageiros,:x_apl_farmacia,
        :x_apl_oficina_dav,:x_apl_oficina_cliente,:x_apl_bar_com_balanca,
        :x_apl_bar_sem_balanca,:x_apl_bar_interligado,
        :x_apl_bar_nao_interligado,:x_apl_posto_com_bomba,
        :x_apl_posto_sem_bomba,:x_apl_estacionamento,:x_apl_cinema,
        :homologation_id)
    end
end
