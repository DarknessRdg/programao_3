# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_29_151140) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome", limit: 80
    t.integer "idade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.date "data_de_nascimento"
    t.float "altura"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pratos", force: :cascade do |t|
    t.string "nome", limit: 80
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pratos_restaurantes", id: false, force: :cascade do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "restaurante_id"
    t.float "nota"
    t.float "valor_gasto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_qualificacoes_on_cliente_id"
    t.index ["restaurante_id"], name: "index_qualificacoes_on_restaurante_id"
  end

  create_table "receita", force: :cascade do |t|
    t.integer "prato_id"
    t.text "conteudo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nome", limit: 80
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "especialidade"
  end

end
