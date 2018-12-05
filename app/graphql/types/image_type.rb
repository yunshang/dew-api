ImageType = GraphQL::ObjectType.define do
  name "image"
  field :id, types.Int
  field :service_url, types.String
end