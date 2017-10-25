Customer.create!([
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216}
])
Order.create!([
  {Customer_id: 1, Payment_type_id: 1},
  {Customer_id: 3, Payment_type_id: 3},
  {Customer_id: 3, Payment_type_id: 3}
])
PaymentType.create!([
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 1},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 2},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 3},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 1},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 2},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 3}
])
Product.create!([
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1},
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1},
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1}
])
ProductType.create!([
  {product_type: "clothing"},
  {product_type: "food"},
  {product_type: "finance"},
  {product_type: "clothing"},
  {product_type: "clothing"},
  {product_type: "food"},
  {product_type: "finance"},
  {product_type: "clothing"}
])
