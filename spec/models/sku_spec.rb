require 'rails_helper'

RSpec.describe Sku, type: :model do
  describe "attributes and indexes" do
    it { is_expected.to have_field(:sku) } # .with_options(type: String) }
  end
  describe "associations - linking and embedding" do
  end
end
