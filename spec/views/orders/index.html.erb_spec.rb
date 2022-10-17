require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        order_number: 2,
        total_amount: "9.99",
        total_before_tax: "9.99",
        total_after_tax: "9.99",
        tax_percent: "9.99",
        discount_amount: "9.99",
        order_status: "Order Status"
      ),
      Order.create!(
        order_number: 2,
        total_amount: "9.99",
        total_before_tax: "9.99",
        total_after_tax: "9.99",
        tax_percent: "9.99",
        discount_amount: "9.99",
        order_status: "Order Status"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Order Status".to_s, count: 2
  end
end
