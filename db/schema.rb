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

ActiveRecord::Schema.define(version: 2022_05_04_093148) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "genre"
    t.text "synopsis"
    t.string "director"
    t.float "allocine_rating"
    t.integer "my_rating"
    t.boolean "already_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

class Album < ActiveRecord::Migration[5.2]
  def change
    create_table :album do |t|
      t.string :title
      t.string :artist
      t.timestamps
    end
  end
end


class Track < ActiveRecord::Migration[5.2]
  def change
    create_table :album do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.integer :duration
      t.integer :size
      t.float :price
      t.timestamps
    end
  end
end