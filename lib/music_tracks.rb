class MusicTracks
  def initialize
    @music = []
  end

  def add(song)
    fail "Can't add empty song" if song.empty?
    @music << song
  end

  def list
    return @music
  end
end