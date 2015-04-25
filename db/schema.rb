# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150425230012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividads", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "ponderacion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "alumnos", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nombre"
    t.string   "apellido_p"
    t.string   "apellido_m"
    t.integer  "edad"
    t.date     "fecha_ingreso"
    t.string   "password"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "id_carrera"
  end

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre"
    t.string   "siglas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "nomina"
    t.string   "nombre"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materia", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "horas_semanales"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "parcials", force: :cascade do |t|
    t.integer  "numero"
    t.integer  "calificacion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.string   "nomina"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
