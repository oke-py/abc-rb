RSpec.describe 'test' do
  it 'test with "3\nabb\n"' do
    io = IO.popen("ruby abc213/F.rb", "w+")
    io.puts("3\nabb\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n3\n2\n")
  end

  it 'test with "11\nmississippi\n"' do
    io = IO.popen("ruby abc213/F.rb", "w+")
    io.puts("11\nmississippi\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n16\n14\n12\n13\n11\n9\n7\n4\n3\n4\n")
  end

end
