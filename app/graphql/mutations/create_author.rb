module Mutations
  class CreateAuthor < Mutations::BaseObject
    graphql_name 'create_author'
    description 'Create an author'

    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      Author.create(author.to_h)
    end
  end
end
