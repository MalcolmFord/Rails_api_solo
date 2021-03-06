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

ActiveRecord::Schema.define(version: 20171025140133) do

  create_table "computers", force: :cascade do |t|
    t.date "purchase_date"
    t.date "decomission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "last_name"
    t.text "first_name"
    t.date "date_customer_created"
    t.boolean "active"
    t.date "last_date_used"
    t.text "email"
    t.text "street_address"
    t.text "city"
    t.text "us_state"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.text "department_name"
    t.float "expense_budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.text "name_last"
    t.text "name_first"
    t.text "job_title"
    t.date "employee_hire_date"
    t.integer "Department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Department_id"], name: "index_employees_on_Department_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "Product_id"
    t.integer "Order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Order_id"], name: "index_order_products_on_Order_id"
    t.index ["Product_id"], name: "index_order_products_on_Product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Customer_id"
    t.integer "Payment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
    t.index ["Payment_type_id"], name: "index_orders_on_Payment_type_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.text "payment_type"
    t.integer "account_number"
    t.integer "Customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_payment_types_on_Customer_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.text "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "product_title"
    t.float "product_price"
    t.integer "Customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_products_on_Customer_id"
  end

end
