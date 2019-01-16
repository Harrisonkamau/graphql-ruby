module Mutations
  class CreateAuthor < Mutations::BaseObject
    graphql_name 'create_author'
    null true
    description 'Create new author'

    argument :first_name, String, required: true, camelize: false
    argument :last_name, String, required: true, camelize: false
    argument :year_of_birth, Integer, required: true, camelize: false
    argument :nationality, String, required: true

    def resolve(first_name:, last_name:, year_of_birth:, nationality:)
      Author.create(
        first_name: first_name,
        last_name: last_name,
        year_of_birth: year_of_birth,
        nationality: nationality
      )
    end
  end
end
