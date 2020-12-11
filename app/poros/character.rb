class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo_url

  def initialize(data)
    @name = data[:name]
    @allies = format_array(data[:allies])
    @enemies = format_array(data[:enemies])
    @affiliation = data[:affiliation]
    @photo_url = find_photo(data)
  end

  def format_array(array)
    array.join(', ')
  end

  def find_photo(data)
    if data[:photoUrl]
      return data[:photoUrl]
    end
  end
end