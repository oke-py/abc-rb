RSpec.describe 'test' do
  it 'test with "3\n1 3 2 3 3 2 2 1 1 1 2\n"' do
    io = IO.popen("ruby abc236/B.rb", "w+")
    io.puts("3\n1 3 2 3 3 2 2 1 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1\n1 1 1\n"' do
    io = IO.popen("ruby abc236/B.rb", "w+")
    io.puts("1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n3 2 1 1 2 4 4 4 4 3 1 3 2 1 3\n"' do
    io = IO.popen("ruby abc236/B.rb", "w+")
    io.puts("4\n3 2 1 1 2 4 4 4 4 3 1 3 2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
