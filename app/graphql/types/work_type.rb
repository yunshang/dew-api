WorkType = GraphQL::ObjectType.define do
  name "Work"
  field :id, types.Int
  field :name, types.String
  field :describe, types.String
  field :location, types.String
  field :category, types.String
  field :model, types.String
  field :images, types[ImageType]
end