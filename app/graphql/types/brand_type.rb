BrandType = GraphQL::ObjectType.define do
  name "Brand"
  field :id, types.Int
  field :name, types.String
  field :cover, ImageType
end