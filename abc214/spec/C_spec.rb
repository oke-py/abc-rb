RSpec.describe 'test' do
  it 'test with "3\n4 1 5\n3 10 100\n"' do
    io = IO.popen("ruby abc214/C.rb", "w+")
    io.puts("3\n4 1 5\n3 10 100\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n7\n8\n")
  end

  it 'test with "4\n100 100 100 100\n1 1 1 1\n"' do
    io = IO.popen("ruby abc214/C.rb", "w+")
    io.puts("4\n100 100 100 100\n1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n1\n")
  end

  it 'test with "4\n1 2 3 4\n1 2 4 7\n"' do
    io = IO.popen("ruby abc214/C.rb", "w+")
    io.puts("4\n1 2 3 4\n1 2 4 7\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n4\n7\n")
  end

  it 'test with "8\n84 87 78 16 94 36 87 93\n50 22 63 28 91 60 64 27\n"' do
    io = IO.popen("ruby abc214/C.rb", "w+")
    io.puts("8\n84 87 78 16 94 36 87 93\n50 22 63 28 91 60 64 27\n")
    io.close_write
    expect(io.readlines.join).to eq("50\n22\n63\n28\n44\n60\n64\n27\n")
  end

end
