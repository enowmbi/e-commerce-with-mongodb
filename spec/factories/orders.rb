FactoryBot.define do
  factory :order do
    order_date { "2022-10-17" }
    order_number { 1 }
    total_amount { "9.99" }
    total_before_tax { "9.99" }
    total_after_tax { "9.99" }
    tax_percent { "9.99" }
    discount_amount { "9.99" }
    order_status { "MyString" }
  end
end
