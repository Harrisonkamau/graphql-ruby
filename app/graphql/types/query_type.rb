module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An added test field' do
      argument :name, String, required: true
    end

    def test_field(name:)
      Rails.logger.info context[:ip_address]
      "Hello, #{name}!"
    end
  end
end
