module Types
  class QueryType < Types::BaseObject

    field :author, Types::AuthorType, null: false,
      description: 'An author' do
        argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end
  end
end
