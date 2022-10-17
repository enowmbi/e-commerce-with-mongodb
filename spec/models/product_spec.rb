require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "fields and indexes" do
    it { is_expected.to have_field(:name) }
  end
end
