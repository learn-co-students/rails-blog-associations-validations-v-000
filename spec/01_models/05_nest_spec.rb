describe Nest do
  context 'Nest validations' do
    it "nest is valid" do
      expect(Nest.create(location: "Oak Tree", fabrication: "straw")).to be_valid
    end

    it "is invalid with no location" do
      expect(Nest.create(location: nil, fabrication: "mud")).to_not be_valid
    end

    it "is invalid with no fabrication" do
      expect(Nest.create(location: "Antartica Snow", fabrication: nil)).to_not be_valid
    end

    it "must be made of mud or straw" do
      expect(Nest.create(location: "Antartica Snow", fabrication: "mortar")).to_not be_valid
    end
  end

  context 'Nest relationship to User' do
    let(:birdone) { Bird.create(name: 'Eddie', species: "Eagle", age: 8) }
    let(:nest1) { Nest.create(bird_id: birdone.id, location: 'France', fabrication: 'mud') }
    let(:nest2) { Nest.create(bird_id: birdone.id, location: 'Eqypt', fabrication: 'straw') }

    it 'belongs to a bird' do
      expect(nest1.bird).to eq(birdone)
    end
  end
end
