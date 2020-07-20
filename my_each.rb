describe "my_each" do
  file = File.read('./my_each.rb')
  contents = file.split(%r{\s|\.}).uniq

  it "does not call on each" do
    expect(contents).to_not include("each")
  it "does not call on .each" do
    expect(file).to_not include(".each")
  end

  it "does not call on puts" do
    expect(contents).to_not include("puts")
    expect(file).to_not include("puts")
  end

  it "calls on while" do
    expect(contents).to include("while")
    expect(file).to include("while")
  end