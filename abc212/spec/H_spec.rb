RSpec.describe 'test' do
  it 'test with "2 2\n1 2\n"' do
    io = IO.popen("ruby abc212/H.rb", "w+")
    io.puts("2 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "100 3\n3 5 7\n"' do
    io = IO.popen("ruby abc212/H.rb", "w+")
    io.puts("100 3\n3 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("112184936\n")
  end

end
