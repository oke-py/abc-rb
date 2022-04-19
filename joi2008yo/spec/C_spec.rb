RSpec.describe 'test' do
  it 'test with "5\n1\n7\n9\n6\n10\n"' do
    io = IO.popen("ruby joi2008yo/C.rb", "w+")
    io.puts("5\n1\n7\n9\n6\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n0\n")
  end

  it 'test with "10\n8\n7\n14\n18\n4\n11\n3\n17\n5\n19\n"' do
    io = IO.popen("ruby joi2008yo/C.rb", "w+")
    io.puts("10\n8\n7\n14\n18\n4\n11\n3\n17\n5\n19\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n0\n")
  end

end
