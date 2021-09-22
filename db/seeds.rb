# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
order.create!(
  order_date: “2021/10/1”,
  order_number: “1”,
  user_id: 1
)

order.create!(
  order_date: “2021/10/2”,
  order_number: “2”,
  user_id: 2
)

order_details.create!(
   order_detail_number: ”1”,
   order_quantity: 1,
   shipment_date: ”2021/10/2”,
   product_id: 1,
   order_id: 1,
   shipment_status_id: 1
)

order_details.create!(
     order_detail_number: ”2”,
     order_quantity: 1,
     shipment_date: ”2021/10/2”,
     product_id: 2,
     order_id: 1,
     shipment_status_id: 1
)


order_details.create!(
     order_detail_number: ”3”,
     order_quantity: 1,
     shipment_date: ”2021/10/2”,
     product_id: 3,
     order_id: 1,
     shipment_status_id: 1
)

order_details.create!(
   order_detail_number: ”4”,
   order_quantity: 1,
   shipment_date: ”2021/10/2”,
   product_id: 4,
   order_id: 1,
   shipment_status_id: 1
)

order_details.create!(
   order_detail_number: ”5”,
   order_quantity: 1,
   shipment_date: ”2021/10/3”,
   product_id: 5,
   order_id: 2,
   shipment_status_id: 2
)
order_details.create!(
   order_detail_number: ”6”,
   order_quantity: 1,
   shipment_date: ”2021/10/3”,
   product_id: 6,
   order_id: 2,
   shipment_status_id: 2
)

order_details.create!(
     order_detail_number: ”7”,
     order_quantity: 1,
     shipment_date: ”2021/10/3”,
     product_id: 7,
     order_id: 2,
     shipment_status_id: 2
)

order_details.create!(
   order_detail_number: ”8”,
   order_quantity: 1,
   shipment_date: ”2021/10/3”,
   product_id: 8,
   order_id: 2,
   shipment_status_id: 2
)

shipment_statuses.create!(
   shipment_status_name: ”発送中”
)

shipment_statuses.create!(
   shipment_status_name: ”準備中”
)
