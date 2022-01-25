RSpec.describe 'test' do
  it 'test with "3\n0 3\n3 1\n4 10\n"' do
    io = IO.popen("ruby abc215/F.rb", "w+")
    io.puts("3\n0 3\n3 1\n4 10\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "4\n0 1\n0 4\n0 10\n0 6\n"' do
    io = IO.popen("ruby abc215/F.rb", "w+")
    io.puts("4\n0 1\n0 4\n0 10\n0 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "8\n897 729\n802 969\n765 184\n992 887\n1 104\n521 641\n220 909\n380 378\n"' do
    io = IO.popen("ruby abc215/F.rb", "w+")
    io.puts("8\n897 729\n802 969\n765 184\n992 887\n1 104\n521 641\n220 909\n380 378\n")
    io.close_write
    expect(io.readlines.join).to eq("801\n")
  end

end
