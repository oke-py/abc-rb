RSpec.describe 'test' do
  it 'test with "3 12\n6 1 5\n"' do
    io = IO.popen("ruby abc215/D.rb", "w+")
    io.puts("3 12\n6 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n7\n11\n")
  end

end
