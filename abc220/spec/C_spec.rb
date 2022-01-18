RSpec.describe 'test' do
  it 'test with "3\n3 5 2\n26\n"' do
    io = IO.popen("ruby abc220/C.rb", "w+")
    io.puts("3\n3 5 2\n26\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "4\n12 34 56 78\n1000\n"' do
    io = IO.popen("ruby abc220/C.rb", "w+")
    io.puts("4\n12 34 56 78\n1000\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

end
