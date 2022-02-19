RSpec.describe 'test' do
  it 'test with "2 1\n"' do
    io = IO.popen("ruby abc239/H.rb", "w+")
    io.puts("2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 39\n"' do
    io = IO.popen("ruby abc239/H.rb", "w+")
    io.puts("2 39\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc239/H.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("250000004\n")
  end

  it 'test with "2392 39239\n"' do
    io = IO.popen("ruby abc239/H.rb", "w+")
    io.puts("2392 39239\n")
    io.close_write
    expect(io.readlines.join).to eq("984914531\n")
  end

  it 'test with "1000000000 1000000000\n"' do
    io = IO.popen("ruby abc239/H.rb", "w+")
    io.puts("1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("776759630\n")
  end

end
