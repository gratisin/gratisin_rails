module Mutations
  class GetProduct < BaseMutation
    field :product, Types::ProductType, null: false

    argument :slug, String, required: true

    def resolve(slug:)
      { product: ::Product.friendly.find(slug) }
    end
  end
end
