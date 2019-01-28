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

ActiveRecord::Schema.define(version: 2019_01_21_173633) do

  create_table "cargos", force: :cascade do |t|
    t.string "nome", limit: 20
    t.string "observacoes", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependentes", force: :cascade do |t|
    t.string "nome", limit: 80
    t.string "endereco", limit: 200
    t.string "telefone", limit: 13
    t.integer "documento", limit: 11
    t.integer "funcionario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcionario_id"], name: "index_dependentes_on_funcionario_id"
  end

  create_table "funcionario_responsabilidades", force: :cascade do |t|
    t.integer "funcionario_id"
    t.integer "responsabilidade_id"
    t.index ["funcionario_id"], name: "index_funcionario_responsabilidades_on_funcionario_id"
    t.index ["responsabilidade_id"], name: "index_funcionario_responsabilidades_on_responsabilidade_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome", limit: 80
    t.string "endereco", limit: 200
    t.string "telefone", limit: 13
    t.integer "documento", limit: 11
    t.integer "salario", limit: 7
    t.integer "cargo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cargo_id"], name: "index_funcionarios_on_cargo_id"
  end

  create_table "responsabilidades", force: :cascade do |t|
    t.string "nome", limit: 50
    t.string "observacoes", limit: 200
    t.integer "funcionario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcionario_id"], name: "index_responsabilidades_on_funcionario_id"
  end

end
