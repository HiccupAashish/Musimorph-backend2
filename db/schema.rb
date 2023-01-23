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

ActiveRecord::Schema.define(version: 2023_01_23_225503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sound_object10s", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.string "image"
    t.string "source"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object3s", force: :cascade do |t|
    t.string "Object_Name"
    t.string "image"
    t.string "hover_property"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object4s", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "position"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object5s", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "shapes"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object6s", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "description"
    t.string "orientation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object7s", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "description"
    t.string "index"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object8s", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.string "image"
    t.string "rotationspeed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_object9s", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.string "image"
    t.string "opacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sound_objectdata", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "color"
    t.string "pixel_density"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "soundobjectlists", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "description"
    t.string "color"
    t.string "Author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "soundobjects", force: :cascade do |t|
    t.string "Name"
    t.string "image"
    t.string "description"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Author"
  end

end
