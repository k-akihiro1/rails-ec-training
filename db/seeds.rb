User.create!(
  password: "1234abcd",
  last_name: "一郎",
  first_name: "テスト",
  zipcode: "123-4567",
  prefecture: "広島県",
  municipality: "中区幟町",
  address: "1-11",
  apartments: "幟町マンション　101号室",
  email: "1234abcd@email",
  phone_number: "090-1234-5678",
  user_classification_id: 1,
  company_name: "一郎カンパニー",
  delete_flag: false
)

User.create!(
  password: "1234ABCD",
  last_name: "二郎",
  first_name: "テスト",
  zipcode: "987-6543",
  prefecture: "東京都",
  municipality: "台東区",
  address: "1-11",
  apartments: "台東マンション　102号室",
  email: "1234ABCD@email",
  phone_number: "090-9876-5432",
  user_classification_id: 1,
  company_name: "2郎カンパニー",
  delete_flag: false
)

CreateUserClassifications.create!(
  user_classification_name: "通常会員"
)
