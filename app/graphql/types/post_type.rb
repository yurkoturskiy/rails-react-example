module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :sections, [Types::SectionType], null: true
    field :slug, String, null: false
    def slug
      puts object.inspect * 50
      "#{object.id}-#{object.title.underscore}"
    end
  end

end
