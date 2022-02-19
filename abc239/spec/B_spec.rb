RSpec.describe 'test' do
  it 'test with "47\n"' do
    io = IO.popen("ruby abc239/B.rb", "w+")
    io.puts("47\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "-24\n"' do
    io = IO.popen("ruby abc239/B.rb", "w+")
    io.puts("-24\n")
    io.close_write
    expect(io.readlines.join).to eq("-3\n")
  end

  it 'test with "50\n"' do
    io = IO.popen("ruby abc239/B.rb", "w+")
    io.puts("50\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "-30\n"' do
    io = IO.popen("ruby abc239/B.rb", "w+")
    io.puts("-30\n")
    io.close_write
    expect(io.readlines.join).to eq("-3\n")
  end

  it 'test with "987654321987654321\n"' do
    io = IO.popen("ruby abc239/B.rb", "w+")
    io.puts("987654321987654321\n")
    io.close_write
    expect(io.readlines.join).to eq("98765432198765432\n")
  end

end
