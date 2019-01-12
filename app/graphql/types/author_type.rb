class Types::AuthorType < Types::BaseObject
  description 'author type'

  field :first_name, String, null: false, camelize: false
  field :last_name, String, null: false, camelize: false
  field :year_of_birth, String, null: true, camelize: false

end
