module Mutations
  class DeleteProduct < BaseMutation
    field :message, String, null: false

    argument :slug, String, required: true

    def resolve(slug:)
      begin
        product = ::Product.friendly.find(slug)
        product.destroy
        { message: 'ok' }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
