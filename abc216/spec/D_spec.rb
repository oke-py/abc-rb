RSpec.describe 'test' do
  it 'test with "2 2\n2\n1 2\n2\n1 2\n"' do
    io = IO.popen("ruby abc216/D.rb", "w+")
    io.puts("2 2\n2\n1 2\n2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 2\n2\n1 2\n2\n2 1\n"' do
    io = IO.popen("ruby abc216/D.rb", "w+")
    io.puts("2 2\n2\n1 2\n2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
