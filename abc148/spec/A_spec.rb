RSpec.describe 'test' do
  it 'test with "3\n1\n"' do
    io = IO.popen("ruby abc148/A.rb", "w+")
    io.puts("3\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n2\n"' do
    io = IO.popen("ruby abc148/A.rb", "w+")
    io.puts("1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
