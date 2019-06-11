# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190611000323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companis", force: :cascade do |t|
    t.string   "razaoSocial"
    t.string   "nomeFantasia"
    t.string   "cnpj"
    t.string   "ie"
    t.string   "im"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "endereco_id"
    t.index ["endereco_id"], name: "index_companis_on_endereco_id", using: :btree
  end

  create_table "controle_periodos", force: :cascade do |t|
    t.datetime "data"
    t.time     "matutinoInicial"
    t.time     "matutinoFinal"
    t.time     "vespertinoInicial"
    t.time     "vespertinoFinal"
    t.time     "noturnoInicial"
    t.time     "noturnoFinal"
    t.integer  "homologation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["homologation_id"], name: "index_controle_periodos_on_homologation_id", using: :btree
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "rua"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homologations", force: :cascade do |t|
    t.string   "titulo"
    t.integer  "compani_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compani_id"], name: "index_homologations_on_compani_id", using: :btree
  end

  create_table "material_recursos", force: :cascade do |t|
    t.string   "nomeEquipamento"
    t.string   "marca"
    t.string   "modelo"
    t.integer  "paf_ecf_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["paf_ecf_id"], name: "index_material_recursos_on_paf_ecf_id", using: :btree
  end

  create_table "paf_ecfs", force: :cascade do |t|
    t.string   "nome_comercial"
    t.string   "idetificacao_versao"
    t.string   "identificacao_executavel_principal"
    t.string   "linguagem"
    t.boolean  "x_linux",                            default: false
    t.boolean  "x_mac",                              default: false
    t.boolean  "x_windows",                          default: false
    t.string   "gerenciador_db"
    t.string   "tipo_desenvolvimento"
    t.string   "integracao_paf"
    t.boolean  "x_imp_concomitante",                 default: false
    t.boolean  "x_imp_nao_concomitante",             default: false
    t.boolean  "x_imp_prevenda",                     default: false
    t.boolean  "x_imp_conta_cliente",                default: false
    t.boolean  "x_imp_dav_sem_impressao",            default: false
    t.boolean  "x_imp_dav_impressora_nao_fiscal",    default: false
    t.boolean  "x__imp_dav_impressora_fiscal",       default: false
    t.string   "tratamento_interrupcao"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "x_apl_pedagio",                      default: false
    t.boolean  "x_apl_passageiros",                  default: false
    t.boolean  "x_apl_farmacia",                     default: false
    t.boolean  "x_apl_oficina_dav",                  default: false
    t.boolean  "x_apl_oficina_cliente",              default: false
    t.boolean  "x_apl_bar_com_balanca",              default: false
    t.boolean  "x_apl_bar_sem_balanca",              default: false
    t.boolean  "x_apl_bar_interligado",              default: false
    t.boolean  "x_apl_bar_nao_interligado",          default: false
    t.boolean  "x_apl_posto_com_bomba",              default: false
    t.boolean  "x_apl_posto_sem_bomba",              default: false
    t.boolean  "x_apl_estacionamento",               default: false
    t.boolean  "x_apl_cinema",                       default: false
    t.string   "nome_executavel_retaguarda"
    t.string   "nome_outros_executaceis"
    t.boolean  "x_perfil_t",                         default: false
    t.boolean  "x_perfil_v",                         default: false
    t.boolean  "x_perfil_w",                         default: false
    t.string   "tipo_funcionamento"
    t.string   "arquivo_sintegra"
    t.integer  "homologation_id"
    t.index ["homologation_id"], name: "index_paf_ecfs_on_homologation_id", using: :btree
  end

  create_table "representante_empresas", force: :cascade do |t|
    t.string   "nome"
    t.string   "funcao"
    t.integer  "compani_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compani_id"], name: "index_representante_empresas_on_compani_id", using: :btree
  end

  create_table "representante_homologations", force: :cascade do |t|
    t.integer  "homologation_id"
    t.integer  "representante_empresa_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["homologation_id"], name: "index_representante_homologations_on_homologation_id", using: :btree
    t.index ["representante_empresa_id"], name: "index_representante_homologations_on_representante_empresa_id", using: :btree
  end

  create_table "representantes_homologations", force: :cascade do |t|
    t.integer  "homologation_id"
    t.integer  "representante_empresas_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["homologation_id"], name: "index_representantes_homologations_on_homologation_id", using: :btree
    t.index ["representante_empresas_id"], name: "index_representantes_homologations_on_representante_empresas_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "companis", "enderecos"
  add_foreign_key "controle_periodos", "homologations"
  add_foreign_key "homologations", "companis"
  add_foreign_key "material_recursos", "paf_ecfs"
  add_foreign_key "paf_ecfs", "homologations"
  add_foreign_key "representante_empresas", "companis"
  add_foreign_key "representante_homologations", "homologations"
  add_foreign_key "representante_homologations", "representante_empresas"
  add_foreign_key "representantes_homologations", "homologations"
  add_foreign_key "representantes_homologations", "representante_empresas", column: "representante_empresas_id"
end
