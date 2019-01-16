module Type
  class Book < Types::BaseObject
    graphql_name 'Book'

    field :title, String, null: false
    field :publication_date, Types::DateType, null: false
  end
end
