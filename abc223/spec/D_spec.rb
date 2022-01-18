RSpec.describe 'test' do
  it 'test with "4 3\n2 1\n3 4\n2 4\n"' do
    io = IO.popen("ruby abc223/D.rb", "w+")
    io.puts("4 3\n2 1\n3 4\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2 1 3 4\n")
  end

  it 'test with "2 3\n1 2\n1 2\n2 1\n"' do
    io = IO.popen("ruby abc223/D.rb", "w+")
    io.puts("2 3\n1 2\n1 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
