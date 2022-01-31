RSpec.describe 'test' do
  it 'test with "2 7\n1 8\n"' do
    io = IO.popen("ruby abc208/C.rb", "w+")
    io.puts("2 7\n1 8\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n3\n")
  end

  it 'test with "1 3\n33\n"' do
    io = IO.popen("ruby abc208/C.rb", "w+")
    io.puts("1 3\n33\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "7 1000000000000\n99 8 2 4 43 5 3\n"' do
    io = IO.popen("ruby abc208/C.rb", "w+")
    io.puts("7 1000000000000\n99 8 2 4 43 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("142857142857\n142857142857\n142857142858\n142857142857\n142857142857\n142857142857\n142857142857\n")
  end

end
