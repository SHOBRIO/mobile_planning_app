# -*- encoding : utf-8 -*-
Plan.create!(
    name: 'メリハリ',
    price: 5000,
)

Plan.create!(
    name: 'ミニフィット',
    price: 3000,
)

Option.create!(
    name: '補償',
    price: 700,
)

Option.create!(
    name: 'セキュリティ',
    price: 500,
)

Discount.create!(
    name: '家族割',
    price: 1200,
)

Discount.create!(
    name: '光割',
    price: 1000,
)

Discount.create!(
    name: 'でんき割',
    price: 100,
)
