RSpec.describe 'test' do
  it 'test with "6 2\n3 1 4 1 5\n"' do
    io = IO.popen("ruby abc218/H.rb", "w+")
    io.puts("6 2\n3 1 4 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "7 6\n2 7 1 8 2 8\n"' do
    io = IO.popen("ruby abc218/H.rb", "w+")
    io.puts("7 6\n2 7 1 8 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "11 7\n12345 678 90123 45678901 234567 89012 3456 78901 23456 7890\n"' do
    io = IO.popen("ruby abc218/H.rb", "w+")
    io.puts("11 7\n12345 678 90123 45678901 234567 89012 3456 78901 23456 7890\n")
    io.close_write
    expect(io.readlines.join).to eq("46207983\n")
  end

end
