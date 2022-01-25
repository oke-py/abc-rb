RSpec.describe 'test' do
  it 'test with "4\n1 2\n4 2\n3 1\n"' do
    io = IO.popen("ruby abc213/D.rb", "w+")
    io.puts("4\n1 2\n4 2\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 4 2 1 3 1\n")
  end

  it 'test with "5\n1 2\n1 3\n1 4\n1 5\n"' do
    io = IO.popen("ruby abc213/D.rb", "w+")
    io.puts("5\n1 2\n1 3\n1 4\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 1 3 1 4 1 5 1\n")
  end

end
