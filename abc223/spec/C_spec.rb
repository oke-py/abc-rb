RSpec.describe 'test' do
  it 'test with "3\n1 1\n2 1\n3 1\n"' do
    io = IO.popen("ruby abc223/C.rb", "w+")
    io.puts("3\n1 1\n2 1\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3.000000000000000\n")
  end

  it 'test with "3\n1 3\n2 2\n3 1\n"' do
    io = IO.popen("ruby abc223/C.rb", "w+")
    io.puts("3\n1 3\n2 2\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3.833333333333333\n")
  end

  it 'test with "5\n3 9\n1 2\n4 6\n1 5\n5 3\n"' do
    io = IO.popen("ruby abc223/C.rb", "w+")
    io.puts("5\n3 9\n1 2\n4 6\n1 5\n5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8.916666666666668\n")
  end

end
