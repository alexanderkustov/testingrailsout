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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120819172523) do

  create_table "contactos", :force => true do |t|
    t.integer  "loja_id"
    t.string   "nome"
    t.string   "contacto"
    t.text     "detalhes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "local_desportivos", :force => true do |t|
    t.text     "detalhes"
    t.boolean  "gmaps"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "morada"
    t.string   "nome"
    t.string   "desporto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "loja_concorrencia", :force => true do |t|
    t.string   "nome"
    t.string   "categoria"
    t.string   "morada"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lojas", :force => true do |t|
    t.string   "nome"
    t.string   "morada"
    t.text     "detalhes"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outdoors", :force => true do |t|
    t.string   "nome"
    t.string   "morada"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "foto"
    t.text     "detalhes"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outros", :force => true do |t|
    t.string   "nome"
    t.string   "morada"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "detalhes"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rankings", :force => true do |t|
    t.string   "desporto"
    t.string   "gama"
    t.integer  "ranking"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
