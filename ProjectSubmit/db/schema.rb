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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161128103531) do
=======
ActiveRecord::Schema.define(version: 20161128192538) do

  create_table "aulas", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficheiros", force: :cascade do |t|
    t.text     "descricao"
    t.date     "date"
    t.text     "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
>>>>>>> origin/master

  create_table "projetos", force: :cascade do |t|
    t.text     "title"
    t.text     "resume"
    t.text     "tag"
    t.date     "date"
    t.integer  "class"
    t.integer  "school"
    t.integer  "users"
    t.text     "ficheiro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilizadors", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.integer  "type"
    t.text     "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utiltypes", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "telefone"
    t.string   "escola"
    t.string   "funcao"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
