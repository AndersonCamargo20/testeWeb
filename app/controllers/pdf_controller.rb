class PdfController < ApplicationController
  def certified
    @compani = Compani.find_by(id: params[:empresa])
    @homologation = Homologation.find_by(id: params[:homologation])
    @periodos = ControlePeriodo.where(homologation_id:  @homologation.id).order("created_at ASC")
    @representantes = RepresentanteHomologation.where(homologation_id:  @homologation.id).order("created_at ASC")
    @paf = PafEcf.find_by(homologation_id:  @homologation.id)
    @recursos = MaterialRecurso.where(paf_ecf_id:  @paf.id)

    @viewMenu = false
    render template: 'pdf/certified',
      handlers: [:erb],
      formats: [:pdf],
      pdf: "Certificado",
      layout: 'layouts/application.html',
      header: {center:""},
        aside: {center: ""},
      show_as_html: false,
      #disposition: 'attachment',
      encoding: 'UTF-8'
    end
end
