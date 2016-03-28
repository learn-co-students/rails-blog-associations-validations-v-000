describe Post do
  context 'Post validations' do
    it "post is valid" do
      expect(Post.create(name: "i", content: "hllo")).to be_valid
    end

    it "is invalid with no name" do
      expect(Post.create(name: nil, content: "i hve no name")).to_not be_valid
    end

    it "is invalid with no content" do
      expect(Post.create(name: "Nme", content: nil)).to_not be_valid
    end
  end

  context 'Post relationship to User and Tag' do
    let(:user) { User.create(name: 'Croshanks') }
    let(:tag1) { Tag.create(name: 'adorble') }
    let(:tag2) { Tag.create(name: 'felne') }
    let(:post) { Post.create(user_id: user.id, name: 'pst', content: 'cotent') }

    before do
      PostTag.create(tag_id: tag1.id, post_id: post.id)
      PostTag.create(tag_id: tag2.id, post_id: post.id)
    end

    it 'belongs to a user' do
      expect(post.user).to eq(user)
    end

    it 'has many tags' do
      expect(post.tags.count).to eq(2)
    end
  end

end
