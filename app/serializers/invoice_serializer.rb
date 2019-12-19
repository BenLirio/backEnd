class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id, :service, :price
end
