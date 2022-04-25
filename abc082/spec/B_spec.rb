RSpec.describe 'test' do
  it 'test with "yx\naxy\n"' do
    io = IO.popen("ruby abc082/B.rb", "w+")
    io.puts("yx\naxy\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "ratcode\natlas\n"' do
    io = IO.popen("ruby abc082/B.rb", "w+")
    io.puts("ratcode\natlas\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "cd\nabc\n"' do
    io = IO.popen("ruby abc082/B.rb", "w+")
    io.puts("cd\nabc\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "w\nww\n"' do
    io = IO.popen("ruby abc082/B.rb", "w+")
    io.puts("w\nww\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "zzz\nzzz\n"' do
    io = IO.popen("ruby abc082/B.rb", "w+")
    io.puts("zzz\nzzz\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
