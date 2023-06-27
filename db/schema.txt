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

ActiveRecord::Schema[7.0].define(version: 2023_06_26_190843) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacto", primary_key: "id_contacto", id: :serial, force: :cascade do |t|
    t.string "correo", null: false
    t.string "tlf_principal", null: false
    t.string "tlf_secundario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identificacion_datos", primary_key: "identificacion", id: :string, force: :cascade do |t|
    t.string "f_emision", null: false
    t.string "f_vencimiento", null: false
    t.string "tipo_documento", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", primary_key: "id_usuario", id: :serial, force: :cascade do |t|
    t.string "tipo_persona", null: false
    t.string "identificacion", null: false
    t.string "nombre", null: false
    t.integer "id_contacto", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

  add_foreign_key "usuarios", "contacto", column: "id_contacto", primary_key: "id_contacto"
  add_foreign_key "usuarios", "identificacion_datos", column: "identificacion", primary_key: "identificacion"
end
