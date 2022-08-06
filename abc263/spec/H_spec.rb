RSpec.describe 'test' do
  it 'test with "3 2\n1 1 1\n2 1 -3\n1 -1 2\n"' do
    io = IO.popen("ruby abc263/H.rb", "w+")
    io.puts("3 2\n1 1 1\n2 1 -3\n1 -1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2.3570226040\n")
  end

  it 'test with "6 7\n5 1 9\n4 4 -3\n8 -1 2\n0 1 -8\n4 0 -4\n2 -3 0\n"' do
    io = IO.popen("ruby abc263/H.rb", "w+")
    io.puts("6 7\n5 1 9\n4 4 -3\n8 -1 2\n0 1 -8\n4 0 -4\n2 -3 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4.0126752298\n")
  end

end
