module Types
  class AuthorType < Types::BaseObject
    graphql_name 'Author'
    description 'Author schema'
    implements GraphQL::Relay::Node.interface

      global_id_field :id

    field :id, ID, null: false
    field :first_name, String, null: false, camelize: false
    field :last_name, String, null: true, camelize: false
    field :year_of_birth, Int, null: true, camelize: false
    field :nationality, String, null: true
    field :full_name, String, null: true, camelize: false


    def full_name
      ([object.first_name, object.last_name].compact).join(' ')
    end
  end
end

