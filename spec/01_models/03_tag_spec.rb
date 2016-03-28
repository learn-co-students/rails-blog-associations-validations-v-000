describe Tag do
  context 'Tag validations' do
    it "tag is valid" do
      expect(Tag.create(name: "hapy")).to be_valid
    end

    it "invalid if name already exists" do
      Tag.create(name: "happy")
      expect(Tag.create(name: "happy")).to_not be_valid
    end
  end

  context 'Tag relationship to Post' do
    let(:tag) { Tag.create(name: 'ute') }
    let(:user) { User.create(name: 'ktten') }
    let(:post) { Post.create(user: user, name: 'pst', content: 'contnt') }

    before do
      PostTag.create(tag: tag, post: post)
    end

    it 'has many posts' do
      expect(tag.posts.count).to eq(1)
    end
  end

end
