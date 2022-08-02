RSpec.describe 'test' do
  it 'test with "4 3\n1 2\n2 3\n1 4\n"' do
    io = IO.popen("ruby abc061/B.rb", "w+")
    io.puts("4 3\n1 2\n2 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n1\n1\n")
  end

  it 'test with "2 5\n1 2\n2 1\n1 2\n2 1\n1 2\n"' do
    io = IO.popen("ruby abc061/B.rb", "w+")
    io.puts("2 5\n1 2\n2 1\n1 2\n2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n5\n")
  end

  it 'test with "8 8\n1 2\n3 4\n1 5\n2 8\n3 7\n5 2\n4 1\n6 8\n"' do
    io = IO.popen("ruby abc061/B.rb", "w+")
    io.puts("8 8\n1 2\n3 4\n1 5\n2 8\n3 7\n5 2\n4 1\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n3\n2\n2\n2\n1\n1\n2\n")
  end

end
