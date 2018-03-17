1.build out via generators
  A. Migration Generator
   1.user -x
    a)name: string

   2.Tag   -x
    a)name: string

  B. Model Generator  
   1.post_tag -x
    a)post_id: integer
    b)tag_id: integer

  C.Controller Generator
   1.user
   2.post
   3.tag
   4.post_tag

  D.Associations
   1.post
     a)belongs_to :user
     b)has_many :post_tags
     c)has_many :tags, :through => :post_tags
   2.user
     has_many :posts
     validates_uniqueness_of :name
     validates_presence_of :name

   3.post_tag
     a)belongs_to :post
     b)belongs_to :tag

   4.tag

2.run initial migration
  A.mock up some objects in console
  B.save
3.Build out routes
4.Build out views
5.
