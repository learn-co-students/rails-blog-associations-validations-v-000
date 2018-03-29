describe 'burds and nests', :type => :feature do

  it 'can create a new bird' do
    visit '/birds/new'
    fill_in('Name', :with => 'Eddie the Eagle')
    fill_in('Species', :with => 'Clumsy Falcon')
    fill_in('Age', :with => 6)
    click_button('Create Bird')
    expect(page).to have_content("Eddie the Eagle")
  end

  it 'can create a new nest' do
    visit '/nests/new'
    fill_in('Location', :with => "Mr. Rodger's Awning")
    fill_in('Fabrication', :with => 'mud')
    click_button('Create Nest')
    expect(page).to have_content("Mr. Rodger's Awning")
  end
end
