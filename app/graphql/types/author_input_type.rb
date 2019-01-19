module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name 'AuthorInputType'
    description 'All attributes for creating an author'

    argument :first_name, String, required: true, camelize: false
    argument :last_name, String, required: true, camelize: false
    argument :nationality, String, required: true
    argument :year_of_birth, Int, required: true, camelize: false
  end
end
