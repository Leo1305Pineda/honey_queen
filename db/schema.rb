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

ActiveRecord::Schema.define(version: 20161119185803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "almacens", force: :cascade do |t|
    t.string   "ubicacion",  limit: 120
    t.string   "nombre",     limit: 35
    t.string   "encargado",  limit: 35
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "marca",      limit: 35
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "modelos", force: :cascade do |t|
    t.string   "modelo",     limit: 35
    t.integer  "marca_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["marca_id"], name: "index_modelos_on_marca_id", using: :btree
  end

  create_table "producto_almacens", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "almacen_id"
    t.float    "cantidad"
    t.float    "cantidad_comprometida"
    t.float    "reorden"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["almacen_id"], name: "index_producto_almacens_on_almacen_id", using: :btree
    t.index ["producto_id"], name: "index_producto_almacens_on_producto_id", using: :btree
  end

  create_table "productos", force: :cascade do |t|
    t.string   "descripcion",       limit: 120
    t.integer  "modelo_id"
    t.string   "codigo_fabricante", limit: 35
    t.string   "unidad"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["modelo_id"], name: "index_productos_on_modelo_id", using: :btree
  end

  add_foreign_key "modelos", "marcas"
  add_foreign_key "producto_almacens", "almacens"
  add_foreign_key "producto_almacens", "productos"
  add_foreign_key "productos", "modelos"
end
