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

ActiveRecord::Schema.define(version: 2018_06_21_142340) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "diseases", force: :cascade do |t|
    t.string "keluhan_utama", limit: 45
    t.string "kode_penyakit", limit: 7
    t.string "nama_penyakit", limit: 45
    t.string "gejala_gejala"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "history_id"
    t.index ["history_id"], name: "index_diseases_on_history_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.string "no_urut", limit: 16
    t.string "no_rekam_medis", limit: 16
    t.integer "poli_tujuan", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "doctor_id"
    t.integer "patient_id"
    t.index ["doctor_id"], name: "index_histories_on_doctor_id"
    t.index ["patient_id"], name: "index_histories_on_patient_id"
  end

  create_table "medicine_recipes", force: :cascade do |t|
    t.string "kodeobat", limit: 15
    t.string "namaobat", limit: 45
    t.datetime "tanggal_kadaluarsa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "history_id"
    t.index ["history_id"], name: "index_medicine_recipes_on_history_id"
  end

  create_table "patient_infos", force: :cascade do |t|
    t.string "provinsi", limit: 45
    t.string "kota", limit: 45
    t.string "kecamatan", limit: 45
    t.string "alamat", limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_patient_infos_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "nama_lengkap", limit: 45
    t.string "no_telepon", limit: 13
    t.integer "pelayanan", limit: 1
    t.integer "jenis_kelamin", limit: 1
    t.string "tempat_lahir", limit: 45
    t.datetime "tanggal_lahir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
