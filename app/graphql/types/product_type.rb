module Types
  class ProductType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: true
    field :slug, String, null: true
    field :detail, String, null: true
    field :user, UserType, null: true
  end
end
