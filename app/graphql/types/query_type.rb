module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_products, [ProductType], null: false
    def all_products
      Product.all
    end

    field :all_users, [UserType], null: false
    def all_users
      User.all
    end

    field :all_user_details, [UserType], null: false
    def all_user_details
      UserDetail.all
    end

    field :my_products, [ProductType], null: false
    def my_products
      context[:current_user].products
    end
  end
end
