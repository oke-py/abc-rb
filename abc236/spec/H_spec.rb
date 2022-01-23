RSpec.describe 'test' do
  it 'test with "3 7\n2 3 4\n"' do
    io = IO.popen("ruby abc236/H.rb", "w+")
    io.puts("3 7\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 3\n1 2 2\n"' do
    io = IO.popen("ruby abc236/H.rb", "w+")
    io.puts("3 3\n1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6 1000000000000000000\n380214083 420492929 929717250 666796775 209977152 770361643\n"' do
    io = IO.popen("ruby abc236/H.rb", "w+")
    io.puts("6 1000000000000000000\n380214083 420492929 929717250 666796775 209977152 770361643\n")
    io.close_write
    expect(io.readlines.join).to eq("325683519\n")
  end

end
