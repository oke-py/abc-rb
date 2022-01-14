RSpec.describe 'test' do
  it 'test with "4 2\n3 1 1 2\n"' do
    io = IO.popen("ruby abc228/B.rb", "w+")
    io.puts("4 2\n3 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "20 12\n7 11 10 1 7 20 14 2 17 3 2 5 19 20 8 14 18 2 10 10\n"' do
    io = IO.popen("ruby abc228/B.rb", "w+")
    io.puts("20 12\n7 11 10 1 7 20 14 2 17 3 2 5 19 20 8 14 18 2 10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
