WorkType = GraphQL::ObjectType.define do
  name "Work"
  field :id, types.Int
  field :images, types[ImageType]
end