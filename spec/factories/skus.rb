FactoryBot.define do
  factory :sku do
    sequence(:sku) { |n| "hpp#{n}" }
    price { 50 }
    quantity_in_stock { 10 }
    feature {"Harry Potter paperback"}
  end
end
