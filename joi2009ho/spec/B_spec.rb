RSpec.describe 'test' do
  it 'test with "8\n3\n2\n3\n1\n4\n6\n"' do
    io = IO.popen("ruby joi2009ho/B.rb", "w+")
    io.puts("8\n3\n2\n3\n1\n4\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "20\n4\n4\n12\n8\n16\n7\n7\n11\n8\n"' do
    io = IO.popen("ruby joi2009ho/B.rb", "w+")
    io.puts("20\n4\n4\n12\n8\n16\n7\n7\n11\n8\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
