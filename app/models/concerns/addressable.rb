module Addressable
  extend ActiveSupport::Concern

  included do
    include Mongoid::Document

    field :country, type: String
    field :city, type: String
    field :state, type: String
    field :street1, type: String
    field :street2, type: String
    field :zip, type: String

    embedded_in :User
  end
end
