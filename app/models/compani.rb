class Compani < ApplicationRecord
    belongs_to :endereco, dependent: :destroy
    accepts_nested_attributes_for :endereco, allow_destroy: true

    validate :fields

    def fields
        if razaoSocial.blank? || nomeFantasia.blank? || cnpj.blank?
            errors.add("(*) ", "Todos os campos obrigatórios devem ser informados.")
        elsif  cnpj.mb_chars.length !=  14
                errors.add("O CNPJ ", "Deve conter 14 números.")

        end
    end
end
