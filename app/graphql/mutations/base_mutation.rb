module Mutations
  class BaseObject < GraphQL::Schema::Mutation
    def errors_for_record(record)
      user_errors_from_errors(record.errors)
    end

    def user_errors_from_errors(errors)
      errors.map do |attribute, error|
        {
          message: errors.full_messages_for(attribute).first,
          error: error,
          path: ['attributes', attribute]
        }
      end
    end
  end
end
