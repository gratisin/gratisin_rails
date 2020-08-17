module Mutations
  class CreateProduct < BaseMutation
    field :message, String, null: false
    field :slug, String, null: false

    argument :name, String, required: true
    argument :detail, String, required: true

    def resolve(name:, detail:)
      current_user = ensure_current_user
      product = current_user.products.create(name: name, detail: detail)
      { message: 'ok', slug: product.slug }
    end
  end
end
