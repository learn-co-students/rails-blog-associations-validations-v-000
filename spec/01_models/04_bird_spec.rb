describe Bird do
  context 'validations' do
    it "bird is valid" do
      expect(Bird.create(name: "Maximus", species: "Bluejay", age: 3)).to be_valid
    end

    it "invalid with no name" do
      expect(Bird.create(name: nil, species: "Cardinal", age: 8)).to_not be_valid
    end

    it "invalid with no species" do
      expect(Bird.create(name: "Maximus", species: nil, age: 12)).to_not be_valid
    end

    it "invalid with no age" do
      expect(Bird.create(name: "Maximus", species: "Falcon", age: nil)).to_not be_valid
    end

    it "invalid if name already exists" do
      Bird.create(name: "Yoshe", species: "Hawk", age: 2)
      expect(Bird.create(name: "Yoshe", species: "Hummingbird", age: 6)).to_not be_valid
    end

  end

  context 'age must be within range' do
    let(:birdy) { Bird.create(name: 'Rasimus', species: "Eagle", age: 6) }
    let(:tweety) { Bird.create(name: 'Rasimus', species: "Eagle", age: 15) }

    it 'must be between 1 and 14' do
      expect(birdy.age.to_i).to be_between(1, 14).inclusive
    end

    it 'cannot be too old' do
      expect(tweety.age.to_i).to_not be_between(1, 14).inclusive
    end
  end
#expect(actual).to be_between(minimum, maximum).inclusive
  context 'relationship to Nest' do
    let(:bird) { Bird.create(name: 'Rasimus', species: "Eagle", age: 9) }
    let!(:nest1) { Nest.create(bird_id: bird.id, location: 'Tree', fabrication: 'straw') }
    let!(:nest2) { Nest.create(bird_id: bird.id, location: 'Awning', fabrication: 'mud') }

    it 'has many nests' do
      expect(bird.nests.count).to eq(2)
    end
  end

end
