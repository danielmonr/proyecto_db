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

ActiveRecord::Schema.define(version: 20150426173003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividads", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "ponderacion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parcial_id"
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
    t.integer  "carrera_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre"
    t.string   "siglas"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "director_id"
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

  create_table "materia_alumnos", force: :cascade do |t|
    t.integer  "materia_id"
    t.integer  "alumno_id"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materia_alumnos", ["alumno_id"], name: "index_materia_alumnos_on_alumno_id", using: :btree
  add_index "materia_alumnos", ["materia_id"], name: "index_materia_alumnos_on_materia_id", using: :btree

  create_table "materia_carreras", force: :cascade do |t|
    t.integer  "materia_id"
    t.integer  "carrera_id"
    t.integer  "semestre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materia_carreras", ["carrera_id"], name: "index_materia_carreras_on_carrera_id", using: :btree
  add_index "materia_carreras", ["materia_id"], name: "index_materia_carreras_on_materia_id", using: :btree

  create_table "materia_profesors", force: :cascade do |t|
    t.integer  "materia_id"
    t.integer  "profesor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materia_profesors", ["materia_id"], name: "index_materia_profesors_on_materia_id", using: :btree
  add_index "materia_profesors", ["profesor_id"], name: "index_materia_profesors_on_profesor_id", using: :btree

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
