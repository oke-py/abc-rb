RSpec.describe 'test' do
  it 'test with "3 3\n2 3 4\n"' do
    io = IO.popen("ruby abc227/D.rb", "w+")
    io.puts("3 3\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 2\n1 1 3 4\n"' do
    io = IO.popen("ruby abc227/D.rb", "w+")
    io.puts("4 2\n1 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "4 3\n1 1 3 4\n"' do
    io = IO.popen("ruby abc227/D.rb", "w+")
    io.puts("4 3\n1 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
