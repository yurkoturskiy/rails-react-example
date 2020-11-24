module Mutations
  class CreatePostMutation < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    field :post, Types::PostType, null: false
    field :id, ID, null: false
    argument :title, String, required: true
    def resolve(title:)
      post = Post.find(id)
      post.update(title: title)
      { post: post }
    end
  end
end
