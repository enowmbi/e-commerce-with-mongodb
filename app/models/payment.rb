class Payment
  include Mongoid::Document

  field :status, type: String
  field :token, type: String
  field :type, type: String

  embedded_in :order
end
