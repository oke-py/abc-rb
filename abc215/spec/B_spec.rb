RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby abc215/B.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc215/B.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000000000000\n"' do
    io = IO.popen("ruby abc215/B.rb", "w+")
    io.puts("1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("59\n")
  end

  it 'test with "576460752303423487\n"' do
    io = IO.popen("ruby abc215/B.rb", "w+")
    io.puts("576460752303423487\n")
    io.close_write
    expect(io.readlines.join).to eq("58\n")
  end

  it 'test with "288230376151711743\n"' do
    io = IO.popen("ruby abc215/B.rb", "w+")
    io.puts("288230376151711743\n")
    io.close_write
    expect(io.readlines.join).to eq("57\n")
  end
end
