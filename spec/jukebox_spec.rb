# Use this song data for your tests
songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

describe Song do
    let(:s) { Song.new("Peaches") }
    
    it "knows its name" do
        expect(s.name).to eq("Peaches")
    end
end

describe Jukebox do
    let(:j) { Jukebox.new(songs) }
    
    it "understands what isn't an approved command" do
        expect(j.command(':)')).to eq("invalid command")
    end
    
    it "can play a song" do
        expect(j.command("play Tiga")).to eq("now playing Tiga")
    end
    
    it "knows if its on or off" do
        expect(j.on?).to eq(true || false)
    end
    
    it "exits" do
        expect(j.command("exit")).to eq("Goodbye, thanks for listening!")
        expect(j.on?).to eq(false)
    end
    
    it "helps" do 
        expect(j.command("help")).to eq("Please select help, list, exit, or play.")
    end
    
    it "lists" do
        expect(j.command("list")).to include("The Cults - Abducted")
    end
end
