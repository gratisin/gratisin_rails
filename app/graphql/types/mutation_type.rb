module Types
  class MutationType < Types::BaseObject
    field :delete_product, mutation: Mutations::DeleteProduct
    field :update_product, mutation: Mutations::UpdateProduct
    field :create_product, mutation: Mutations::CreateProduct
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
