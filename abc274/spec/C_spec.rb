RSpec.describe 'test' do
  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc274/C.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n1\n2\n2\n")
  end

  it 'test with "4\n1 3 5 2\n"' do
    io = IO.popen("ruby abc274/C.rb", "w+")
    io.puts("4\n1 3 5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n1\n2\n2\n3\n3\n2\n2\n")
  end

end
