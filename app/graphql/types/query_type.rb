module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'

    field :author, Types::AuthorType, null: false,
      description: 'Retrieve an author by id' do
        argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    field :authors, [Types::AuthorType], null: false, description: 'All authors' do
      argument :limit, Int, required: false
    end

    def authors(limit = 20)
      Author.all.order(latest).limit(limit)
    end

    private

    def latest
      'id desc'
    end
  end
end
