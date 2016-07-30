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

ActiveRecord::Schema.define(version: 20160730015214) do

  create_table "dna_extractions", force: :cascade do |t|
    t.integer  "sample_id",   limit: 4
    t.string   "old_id",      limit: 255
    t.date     "date"
    t.text     "notes",       limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "gel_picture", limit: 255
    t.string   "tag",         limit: 255
  end

  add_index "dna_extractions", ["sample_id"], name: "index_dna_extractions_on_sample_id", using: :btree

  create_table "dna_extractions_libraries", force: :cascade do |t|
    t.integer "library_id",        limit: 4,   null: false
    t.integer "dna_extraction_id", limit: 4,   null: false
    t.string  "well",              limit: 255
    t.string  "i5",                limit: 255
    t.string  "i7",                limit: 255
  end

  add_index "dna_extractions_libraries", ["dna_extraction_id", "library_id"], name: "index_dnas_libraries", unique: true, using: :btree

  create_table "dna_extractions_sequencings", force: :cascade do |t|
    t.integer "dna_extraction_id", limit: 4
    t.integer "sequencing_id",     limit: 4
    t.text    "notes",             limit: 65535
    t.string  "external_id",       limit: 255
  end

  add_index "dna_extractions_sequencings", ["dna_extraction_id"], name: "index_dna_extractions_sequencings_on_dna_extraction_id", using: :btree
  add_index "dna_extractions_sequencings", ["sequencing_id"], name: "index_dna_extractions_sequencings_on_sequencing_id", using: :btree

  create_table "libraries", force: :cascade do |t|
    t.string   "laboratory",    limit: 255
    t.text     "notes",         limit: 65535
    t.string   "hyp",           limit: 255
    t.string   "fpu",           limit: 255
    t.date     "pre_pcr_date"
    t.date     "pcr_date"
    t.string   "iap",           limit: 255
    t.string   "clp",           limit: 255
    t.string   "lnp",           limit: 255
    t.string   "sgp",           limit: 255
    t.date     "post_pcr_date"
    t.string   "old_id",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "nanodrop_quantifications", force: :cascade do |t|
    t.float    "concentration",     limit: 24
    t.float    "ratio_260_280",     limit: 24
    t.float    "ratio_260_230",     limit: 24
    t.float    "absorbance_280",    limit: 24
    t.float    "absorbance_260",    limit: 24
    t.float    "factor",            limit: 24
    t.date     "date"
    t.integer  "dna_extraction_id", limit: 4
    t.string   "sample_type",       limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "nanodrop_quantifications", ["dna_extraction_id"], name: "index_nanodrop_quantifications_on_dna_extraction_id", using: :btree

  create_table "notebooks", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.date     "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "file",        limit: 255
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "acronym",    limit: 255
    t.date     "birthdate"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "full_name",   limit: 255
    t.string   "tag",         limit: 255
    t.text     "description", limit: 65535
    t.string   "old_id",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "qubit_quantifications", force: :cascade do |t|
    t.float    "assay_concentration", limit: 24
    t.float    "stock_concentration", limit: 24
    t.string   "assay_type",          limit: 255
    t.float    "sample_vol",          limit: 24
    t.float    "dilution_factor",     limit: 24
    t.float    "std1_rfu",            limit: 24
    t.float    "std2_rfu",            limit: 24
    t.float    "std3_rfu",            limit: 24
    t.float    "excitation",          limit: 24
    t.float    "green_rfu",           limit: 24
    t.float    "far_red_rfu",         limit: 24
    t.date     "date"
    t.integer  "dna_extraction_id",   limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "qubit_quantifications", ["dna_extraction_id"], name: "index_qubit_quantifications_on_dna_extraction_id", using: :btree

  create_table "samples", force: :cascade do |t|
    t.string   "institution",      limit: 255
    t.string   "doctor_full_name", limit: 255
    t.string   "doctor_email",     limit: 255
    t.date     "request_date"
    t.date     "admission_date"
    t.string   "request_category", limit: 255
    t.text     "notes",            limit: 65535
    t.integer  "project_id",       limit: 4
    t.string   "old_id",           limit: 255
    t.integer  "patient_id",       limit: 4
    t.string   "barcode",          limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "samples", ["patient_id"], name: "index_samples_on_patient_id", using: :btree
  add_index "samples", ["project_id"], name: "index_samples_on_project_id", using: :btree

  create_table "sequencings", force: :cascade do |t|
    t.string   "pal",               limit: 255
    t.string   "dal",               limit: 255
    t.date     "pre_seq_date"
    t.text     "pre_seq_notes",     limit: 65535
    t.string   "investigator_name", limit: 255
    t.string   "rcb",               limit: 255
    t.string   "sample_prep_kit",   limit: 255
    t.integer  "index_reads",       limit: 4
    t.string   "read_type",         limit: 255
    t.integer  "cycles_reads_1",    limit: 4
    t.integer  "cycles_reads_2",    limit: 4
    t.date     "run_date"
    t.text     "notes",             limit: 65535
    t.string   "old_id",            limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_foreign_key "dna_extractions", "samples"
  add_foreign_key "dna_extractions_sequencings", "dna_extractions"
  add_foreign_key "dna_extractions_sequencings", "sequencings"
  add_foreign_key "nanodrop_quantifications", "dna_extractions"
  add_foreign_key "qubit_quantifications", "dna_extractions"
  add_foreign_key "samples", "patients"
  add_foreign_key "samples", "projects"
end
