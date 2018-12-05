QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "query"

  field :user do
    type UserType
    argument :id, !types.ID
    description "Find a User by ID"
    resolve ->(obj, args, ctx) { User.find_by_id(args["id"]) }
  end

  field :work do
    type WorkType
    argument :id, !types.ID
    description "Find a Work by ID"
    resolve ->(obj, args, ctx) { Work.find_by_id(args["id"]) }
  end
end
