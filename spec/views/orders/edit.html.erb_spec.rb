require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      order_number: 1,
      total_amount: "9.99",
      total_before_tax: "9.99",
      total_after_tax: "9.99",
      tax_percent: "9.99",
      discount_amount: "9.99",
      order_status: "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[order_number]"

      assert_select "input[name=?]", "order[total_amount]"

      assert_select "input[name=?]", "order[total_before_tax]"

      assert_select "input[name=?]", "order[total_after_tax]"

      assert_select "input[name=?]", "order[tax_percent]"

      assert_select "input[name=?]", "order[discount_amount]"

      assert_select "input[name=?]", "order[order_status]"
    end
  end
end
