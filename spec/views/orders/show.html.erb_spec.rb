require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      order_number: 2,
      total_amount: "9.99",
      total_before_tax: "9.99",
      total_after_tax: "9.99",
      tax_percent: "9.99",
      discount_amount: "9.99",
      order_status: "Order Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Order Status/)
  end
end
