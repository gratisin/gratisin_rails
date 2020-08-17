module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    def ensure_current_user
      current_user = context[:current_user]
      raise GraphQL::ExecutionError, 'Not authorized' unless current_user

      current_user
    end
  end
end
