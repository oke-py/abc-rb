RSpec.describe 'test' do
  it 'test with "2 2 1\n31\n41\n"' do
    io = IO.popen("ruby abc228/G.rb", "w+")
    io.puts("2 2 1\n31\n41\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "2 3 4\n777\n777\n"' do
    io = IO.popen("ruby abc228/G.rb", "w+")
    io.puts("2 3 4\n777\n777\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 10 300\n3181534389\n4347471911\n4997373645\n5984584273\n1917179465\n3644463294\n1234548423\n6826453721\n5892467783\n1211598363\n"' do
    io = IO.popen("ruby abc228/G.rb", "w+")
    io.puts("10 10 300\n3181534389\n4347471911\n4997373645\n5984584273\n1917179465\n3644463294\n1234548423\n6826453721\n5892467783\n1211598363\n")
    io.close_write
    expect(io.readlines.join).to eq("685516949\n")
  end

end
