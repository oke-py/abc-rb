RSpec.describe 'test' do
  it 'test with "1 1\n0 2\n"' do
    io = IO.popen("ruby abc226/H.rb", "w+")
    io.puts("1 1\n0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 2\n0 2\n1 3\n"' do
    io = IO.popen("ruby abc226/H.rb", "w+")
    io.puts("2 2\n0 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("707089751\n")
  end

  it 'test with "10 5\n35 48\n44 64\n47 59\n39 97\n36 37\n4 91\n38 82\n20 84\n38 50\n39 69\n"' do
    io = IO.popen("ruby abc226/H.rb", "w+")
    io.puts("10 5\n35 48\n44 64\n47 59\n39 97\n36 37\n4 91\n38 82\n20 84\n38 50\n39 69\n")
    io.close_write
    expect(io.readlines.join).to eq("810056397\n")
  end

end
