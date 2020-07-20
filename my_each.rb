  it "test that the block is run n times" do
    tas = ['arel', 'jon', 'logan', 'spencer']
    expected = tas.length
    times_called = 0

    my_each(tas) do |ta|
      times_called += 1
    end

    expect(times_called).to eq(expected)

  end

  it "that only a single element is passed into that block." do

    tas = ['arel', 'jon', 'logan', 'spencer']
    expected = tas.length
    times_called = 0

    my_each(tas) do |ta|
      # cannot be an array
      expect(ta.kind_of?(Array)).to eq(false)
      expect(ta.kind_of?(String)).to eq(true)
    end

  end