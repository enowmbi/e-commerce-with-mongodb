require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      tags: "MyString",
      categories: "MyString",
      skus: "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[tags]"

      assert_select "input[name=?]", "product[categories]"

      assert_select "input[name=?]", "product[skus]"
    end
  end
end
