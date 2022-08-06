RSpec.describe 'test' do
  it 'test with "3\n1 1\n"' do
    io = IO.popen("ruby abc263/E.rb", "w+")
    io.puts("3\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5\n3 1 2 1\n"' do
    io = IO.popen("ruby abc263/E.rb", "w+")
    io.puts("5\n3 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("332748122\n")
  end

end
