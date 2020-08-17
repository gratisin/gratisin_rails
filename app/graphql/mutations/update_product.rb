module Mutations
  class UpdateProduct < BaseMutation
    field :message, String, null: false
    field :slug, String, null: true

    argument :name, String, required: true
    argument :detail, String, required: true
    argument :slug, String, required: true

    def resolve(name:, detail:, slug:)
      begin
        product = ::Product.friendly.find(slug)
        product.update(name: name, detail: detail)
        { message: 'ok', slug: product.slug }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
