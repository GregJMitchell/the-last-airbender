require 'rails_helper'

RSpec.describe Character do
  it 'exists' do
    data = {
      id: '5cf5679a915ecad153ab68fd',
      allies: [
        'Ozai'
      ],
      enemies: [
        'Earth Kingdom'
      ],
      name: 'Chan (Fire Nation admiral)',
      affiliation: 'Fire Nation Navy'
    }
    character = Character.new(data)
    expect(character).to be_a Character
    expect(character.name).to eq('Chan (Fire Nation admiral)')
    expect(character.allies).to eq('Ozai')
    expect(character.enemies).to eq('Earth Kingdom')
    expect(character.affiliation).to eq('Fire Nation Navy')
  end
end
