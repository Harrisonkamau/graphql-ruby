module Type
  class Date < GraphQL::ScalarType
    graphql_name 'Date'

    coerce_input -> (value, _ctx) { Date.parse(value) }
    coerce_result -> (value, _ctx) { value.strftime('%Y') }
  end
end