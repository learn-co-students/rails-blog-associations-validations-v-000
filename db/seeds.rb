# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TAGS = ["adventurous", "aggressive", "agreeable", "alert", "alive", "amused", "angry", "annoyed", "annoying", "anxious", "arrogant", "ashamed", "attractive", "average", "awful", "bad", "beautiful", "better", "bewildered"]

TAGS.each{|tag| Tag.create(:name  => tag)}

crookshanks = User.create(:name => "Crookshanks")

adorable = Tag.create(:name => "adorable")

kitten_post = Post.create(:user_id => crookshanks.id, :name => "Kittens!", :content => "Kitty ipsum dolor sit amet, climb the curtains hairball lay down in your way rip the couch sunbathe, jump on the table stuck in a tree leap lay down in your way bat. Sleep on your keyboard puking catnip chuf, zzz purr hairball claw give me fish I don't like that food sunbathe. Knock over the lamp hiss knock over the lamp stuck in a tree give me fish, meow judging you biting climb the curtains sleep on your face sunbathe sleep on your face. Biting fluffy fur knock over the lamp zzz jump, scratched purr chuf eat the grass judging you sleep on your keyboard. Biting knock over the lamp knock over the lamp feed me, meow sleep in the sink catnip kittens sleep on your face attack. Judging you stuck in a tree zzz bat stuck in a tree puking, fluffy fur sleep on your keyboard kittens jump biting chase the red dot.")

PostTag.create(:tag_id => adorable.id, :post_id => kitten_post.id)
