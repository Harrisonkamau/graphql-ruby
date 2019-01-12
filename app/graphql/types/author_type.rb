class Types::AuthorType < Types::BaseObject
  description 'author type'

  field :first_name, String, null: false, camelize: false
  field :last_name, String, null: false, camelize: false
  field :year_of_birth, Int, null: true, camelize: false
  field :nationality, String, null: true
end
