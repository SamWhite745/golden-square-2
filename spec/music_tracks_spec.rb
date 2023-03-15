require 'music_tracks'

RSpec.describe MusicTracks do
  context "When initialized" do
    it "has an empty list of songs" do
      music = MusicTracks.new
      expect(music.list).to eq []
    end
  end

  context "When initialised and added a song" do
    it "list returns with the song in it" do
      music = MusicTracks.new
      music.add("Toxic - Britney Spear")
      expect(music.list).to eq ["Toxic - Britney Spear"]
    end
  end

  context "When initialised and added multiple songs" do
    it "list returns with all of the songs in it" do
      music = MusicTracks.new
      music.add("Toxic - Britney Spear")
      music.add("XO - Knightly")
      expect(music.list).to eq ["Toxic - Britney Spear", "XO - Knightly"]
    end
  end  

  it "fails when adding nothing" do
    music = MusicTracks.new
    expect { music.add("") }.to raise_error "Can't add empty song"
  end
end