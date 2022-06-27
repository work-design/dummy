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

ActiveRecord::Schema.define(version: 2021_09_01_105143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_mailbox_inbound_emails", id: { scale: 8 }, force: :cascade do |t|
    t.integer "status", scale: 4, default: 0, null: false
    t.string "message_id", null: false
    t.string "message_checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "active_storage_attachments", id: { scale: 8 }, force: :cascade do |t|
    t.string "record_type"
    t.bigint "record_id", scale: 8
    t.bigint "blob_id", scale: 8
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id"], name: "index_active_storage_attachments_on_record"
  end

  create_table "active_storage_blobs", id: { scale: 8 }, force: :cascade do |t|
    t.jsonb "metadata"
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.integer "byte_size", scale: 4, null: false
    t.string "checksum"
    t.string "service_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", id: { scale: 8 }, force: :cascade do |t|
    t.bigint "blob_id", scale: 8
    t.string "variation_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blob_id"], name: "index_active_storage_variant_records_on_blob_id"
  end

  create_table "com_acme_accounts", id: { scale: 8 }, force: :cascade do |t|
    t.string "email"
    t.string "kid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_acme_identifiers", id: { scale: 8 }, force: :cascade do |t|
    t.bigint "acme_order_id", scale: 8
    t.string "identifier"
    t.string "file_name"
    t.string "file_content"
    t.string "token"
    t.string "record_name"
    t.string "record_content"
    t.string "domain"
    t.boolean "wildcard"
    t.string "url"
    t.boolean "dns_valid"
    t.boolean "file_valid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["acme_order_id"], name: "index_com_acme_identifiers_on_acme_order_id"
  end

  create_table "com_acme_orders", id: { scale: 8 }, force: :cascade do |t|
    t.bigint "acme_account_id", scale: 8
    t.string "orderid"
    t.string "url"
    t.datetime "issued_at", precision: 6
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["acme_account_id"], name: "index_com_acme_orders_on_acme_account_id"
  end

  create_table "com_blob_defaults", id: { scale: 8 }, force: :cascade do |t|
    t.string "record_class", comment: "AR 类名，如 User"
    t.string "name", comment: "名称, attach 名称，如：avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_cache_lists", id: { scale: 8 }, force: :cascade do |t|
    t.string "path"
    t.string "key"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_csps", id: { scale: 8 }, force: :cascade do |t|
    t.string "document_uri"
    t.string "referrer"
    t.string "violated_directive"
    t.string "effective_directive"
    t.string "original_policy"
    t.string "disposition"
    t.string "blocked_uri"
    t.string "line_number"
    t.string "column_number"
    t.string "source_file"
    t.string "status_code"
    t.string "script_sample"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_errs", id: { scale: 8 }, force: :cascade do |t|
    t.string "path"
    t.string "controller_name"
    t.string "action_name"
    t.string "exception"
    t.string "exception_object"
    t.string "exception_backtrace", default: [], array: true
    t.jsonb "params", default: {}
    t.jsonb "headers", default: {}
    t.jsonb "cookie", default: {}
    t.jsonb "session", default: {}
    t.string "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_infos", id: { scale: 8 }, force: :cascade do |t|
    t.string "code"
    t.string "value"
    t.string "version"
    t.string "platform"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "com_meta_actions", id: { scale: 8 }, force: :cascade do |t|
    t.string "namespace_identifier", default: "", null: false
    t.string "business_identifier", default: "", null: false
    t.string "controller_path", null: false
    t.string "controller_name", null: false
    t.string "action_name"
    t.string "path"
    t.string "verb"
    t.string "required_parts", array: true
    t.integer "position", scale: 4
    t.boolean "landmark"
    t.string "operation", default: "read"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_identifier"], name: "index_com_meta_actions_on_business_identifier"
    t.index ["controller_path"], name: "index_com_meta_actions_on_controller_path"
    t.index ["namespace_identifier"], name: "index_com_meta_actions_on_namespace_identifier"
  end

  create_table "com_meta_businesses", id: { scale: 8 }, force: :cascade do |t|
    t.string "name"
    t.string "identifier", default: "", null: false
    t.integer "position", scale: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["identifier"], name: "index_com_meta_businesses_on_identifier"
  end

  create_table "com_meta_columns", id: { scale: 8 }, force: :cascade do |t|
    t.string "record_name"
    t.string "column_name"
    t.string "sql_type"
    t.string "column_type"
    t.integer "column_limit", scale: 4
    t.string "comment"
    t.boolean "defined_db"
    t.boolean "defined_model"
    t.boolean "belongs_enable"
    t.string "belongs_table"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_name"], name: "index_com_meta_columns_on_record_name"
  end

  create_table "com_meta_controllers", id: { scale: 8 }, force: :cascade do |t|
    t.string "namespace_identifier", default: "", null: false
    t.string "business_identifier", default: "", null: false
    t.string "controller_path", null: false
    t.string "controller_name", null: false
    t.integer "position", scale: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_identifier"], name: "index_com_meta_controllers_on_business_identifier"
    t.index ["controller_path"], name: "index_com_meta_controllers_on_controller_path"
    t.index ["namespace_identifier"], name: "index_com_meta_controllers_on_namespace_identifier"
  end

  create_table "com_meta_models", id: { scale: 8 }, force: :cascade do |t|
    t.string "name"
    t.string "record_name"
    t.string "description"
    t.boolean "defined_db"
    t.boolean "customizable", comment: "是否允许用户定制"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_name"], name: "index_com_meta_models_on_record_name"
  end

  create_table "com_meta_namespaces", id: { scale: 8 }, force: :cascade do |t|
    t.string "name"
    t.string "identifier", default: "", null: false
    t.boolean "verify_organ"
    t.boolean "verify_member"
    t.boolean "verify_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["identifier"], name: "index_com_meta_namespaces_on_identifier"
  end

  create_table "com_meta_operations", id: { scale: 8 }, force: :cascade do |t|
    t.string "action_name"
    t.string "operation", default: "read"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
