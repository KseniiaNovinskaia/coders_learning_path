# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_02_183958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "codewars_profiles", force: :cascade do |t|
    t.string "user_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "honor"
    t.string "overall_rank_name"
    t.string "overall_score"
    t.string "code_challenges_authored_"
    t.string "code_challenges_completed"
    t.string "first_language_name"
    t.string "first_language_rank_name"
    t.string "first_language_score"
    t.string "second_language_name"
    t.string "second_language_rank_name"
    t.string "second_language_score"
    t.index ["user_id"], name: "index_codewars_profiles_on_user_id"
  end

  create_table "learning_groups", force: :cascade do |t|
    t.string "slack_channel"
    t.bigint "path_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["path_id"], name: "index_learning_groups_on_path_id"
  end

  create_table "paths", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "requirement"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "step_progresses", force: :cascade do |t|
    t.boolean "completion", default: false
    t.bigint "step_id", null: false
    t.bigint "user_id", null: false
    t.bigint "path_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["path_id"], name: "index_step_progresses_on_path_id"
    t.index ["step_id"], name: "index_step_progresses_on_step_id"
    t.index ["user_id"], name: "index_step_progresses_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.string "title"
    t.string "step_type"
    t.integer "duration"
    t.bigint "path_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["path_id"], name: "index_steps_on_path_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_learning_groups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "learning_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["learning_group_id"], name: "index_users_learning_groups_on_learning_group_id"
    t.index ["user_id"], name: "index_users_learning_groups_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "codewars_profiles", "users"
  add_foreign_key "learning_groups", "paths"
  add_foreign_key "step_progresses", "paths"
  add_foreign_key "step_progresses", "steps"
  add_foreign_key "step_progresses", "users"
  add_foreign_key "steps", "paths"
  add_foreign_key "users_learning_groups", "learning_groups"
  add_foreign_key "users_learning_groups", "users"
end
