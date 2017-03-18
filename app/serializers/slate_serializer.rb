class SlateSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :issues
end
