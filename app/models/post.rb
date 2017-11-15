class Post < ActiveRecord::Base
  belongs_to :user
  has_many :PostTags
  has_many :tags, through: :PostTags

  validates :name, presence: true
  validates :content, presence: true

  def tag_ids=(ids)
    ids.each do |id|
      if !id.blank?
        tag = Tag.find(id)
        self.tags << tag
      end
    end
  end

end
