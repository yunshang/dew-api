UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, types.Int
end