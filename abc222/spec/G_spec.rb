RSpec.describe 'test' do
  it 'test with "4\n1\n7\n10\n999983\n"' do
    io = IO.popen("ruby abc222/G.rb", "w+")
    io.puts("4\n1\n7\n10\n999983\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n6\n-1\n999982\n")
  end

end
