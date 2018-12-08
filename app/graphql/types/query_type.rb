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

  field :allWork, types[WorkType] do
    description "Get All Work"
    resolve -> (obj, args, ctx) {
      Work.all
    }
  end

  field :brand do
    type BrandType
    argument :id, !types.ID
    description "Find a Brand by ID"
    resolve ->(obj, args, ctx) { Brand.find_by_id(args["id"]) }
  end

  field :allBrand, types[BrandType] do
    argument :id, !types.ID
    description "Get all Brand"
    resolve ->(obj, args, ctx) { Brand.all }
  end
end
