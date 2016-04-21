*** MIGRATIONS ***

posts
  [x] t.string :name
  [x] t.text :content

users
  [x] t.string :name

tags
  [x] t.string :name

post_tags
  [x] t.integer :tag_id
  [x] t.integer :post_id

*** MODELS
Post
  [x] belongs_to :user
  [x] has_many :post_tags
  [x] has_many :tags, through: :post_tags

User
  [x] has_many :posts

Tag
  [x] has_many :post_tags
  [x] has_many :posts, through: :post_tags

PostTag
  [x] belongs_to :post
  [x] belongs_to :tag