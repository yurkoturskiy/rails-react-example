# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
post = Post.create(title: 'First post', description: 'Create a react app on ruby on rails')

section = Section.create(title: 'Chapter I', post: post)

episode = Episode.create([
    {
        title: "01. First episode", description: "Just playing with the app", url: "https://advisable.com/", section: section
    }
])