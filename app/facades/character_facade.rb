class CharacterFacade
  def self.nation_members(nation)
    json = AvatarService.nation_members(nation)
    json.map do |character|
      Character.new(character)
    end
  end
end
