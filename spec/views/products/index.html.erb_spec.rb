require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        name: "Name",
        tags: "Tags",
        categories: "Categories",
        skus: "Skus"
      ),
      Product.create!(
        name: "Name",
        tags: "Tags",
        categories: "Categories",
        skus: "Skus"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Tags".to_s, count: 2
    assert_select "tr>td", text: "Categories".to_s, count: 2
    assert_select "tr>td", text: "Skus".to_s, count: 2
  end
end
