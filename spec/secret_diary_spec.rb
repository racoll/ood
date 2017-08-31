require "secret_diary"

describe SecretDiary do
  describe "#lock" do
    it "locks the diary" do
      expect(subject).to respond_to :lock
    end
  end

describe "#unlock" do
  it "unlocks the diary" do
    expect(subject).to respond_to :unlock
  end
end

  describe "#add_entry" do
    it "adds an entry to the diary" do
    subject.unlock
    expect(subject.unlock).to eq true
  end
  it "raises an error when diary locked" do
    subject.lock
    expect{subject.add_entry}.to raise_error "diary is locked"
  end
end


  describe "#get_entries" do
    it "gets dairy entries" do
      expect(subject.unlock).to eq true
    end
    it "raises an error when diary locked" do
      subject.lock
      expect{subject.get_entries}.to raise_error "diary is locked"
    end
  end

end
