class AvatarService
  def self.nation_members(nation)
    nation = nation.split('_').join('+')
    get_results("/api/v1/characters?affiliation=#{nation}")
  end

  def self.get_results(uri)
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
