RSpec.describe 'test' do
  it 'test with "3\n1 2 2\n"' do
    io = IO.popen("ruby abc215/G.rb", "w+")
    io.puts("3\n1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n665496237\n2\n")
  end

  it 'test with "11\n3 1 4 1 5 9 2 6 5 3 5\n"' do
    io = IO.popen("ruby abc215/G.rb", "w+")
    io.puts("11\n3 1 4 1 5 9 2 6 5 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n725995895\n532396991\n768345657\n786495555\n937744700\n574746754\n48399732\n707846002\n907494873\n7\n")
  end

end
