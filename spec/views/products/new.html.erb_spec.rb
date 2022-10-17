require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      tags: "MyString",
      categories: "MyString",
      skus: "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[tags]"

      assert_select "input[name=?]", "product[categories]"

      assert_select "input[name=?]", "product[skus]"
    end
  end
end
