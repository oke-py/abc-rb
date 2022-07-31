RSpec.describe 'test' do
  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc067/A.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Possible\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc067/A.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Impossible\n")
  end

end
