require 'diary'

RSpec.describe Diary do
  it "initializes" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
end