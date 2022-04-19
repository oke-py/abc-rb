RSpec.describe 'test' do
  it 'test with "2 5\n0 1 0 1 0\n1 0 0 0 1\n"' do
    io = IO.popen("ruby joi2008yo/E.rb", "w+")
    io.puts("2 5\n0 1 0 1 0\n1 0 0 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "3 6\n1 0 0 0 1 0\n1 1 1 0 1 0\n1 0 1 1 0 1 \n"' do
    io = IO.popen("ruby joi2008yo/E.rb", "w+")
    io.puts("3 6\n1 0 0 0 1 0\n1 1 1 0 1 0\n1 0 1 1 0 1 \n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

end
