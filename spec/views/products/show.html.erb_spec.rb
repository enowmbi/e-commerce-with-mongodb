require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "Name",
      tags: "Tags",
      categories: "Categories",
      skus: "Skus"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/Categories/)
    expect(rendered).to match(/Skus/)
  end
end
