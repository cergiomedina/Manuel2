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

ActiveRecord::Schema.define(version: 20151124181151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.integer  "alumno_rut",        null: false
    t.string   "alumno_nombre",     null: false
    t.string   "alumno_apellido"
    t.string   "alumno_correo",     null: false
    t.string   "alumno_contrasena", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "curso_alumnos", force: :cascade do |t|
    t.integer  "c_a_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.integer  "curso_id",       null: false
    t.string   "curso_nombre",   null: false
    t.integer  "curso_semestre", null: false
    t.integer  "curso_ano",      null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "encuesta", force: :cascade do |t|
    t.integer  "encuesta_id",          null: false
    t.boolean  "encuesta_estado",      null: false
    t.string   "encuesta_nombre",      null: false
    t.string   "encuesta_descripcion", null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "feed_id",      null: false
    t.integer  "feed_resumen"
    t.string   "feed_motivo"
    t.date     "feed_fecha"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.integer  "grupo_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregunta", force: :cascade do |t|
    t.integer  "pregunta_id",          null: false
    t.string   "pregunta_enunciado",   null: false
    t.string   "pregunta_descripcion", null: false
    t.integer  "pregunta_opciones"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.integer  "profesor_rut",        null: false
    t.string   "profesor_nombre",     null: false
    t.string   "profesor_apellido"
    t.string   "profesor_correo",     null: false
    t.string   "profesor_contrasena", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "respuesta", force: :cascade do |t|
    t.integer  "respuesta_id",      null: false
    t.integer  "respuesta_valores"
    t.date     "respuesta_fecha"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tipo_encuesta", force: :cascade do |t|
    t.integer  "tipo_id",          null: false
    t.string   "tipo_nombre",      null: false
    t.string   "tipo_descripcion", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
