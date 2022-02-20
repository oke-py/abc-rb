RSpec.describe 'test' do
  it 'test with "3\n3 7\n-1 2\n2 3\n-3 2\n10 472\n-4 12\n1 29\n2 77\n-1 86\n0 51\n3 81\n3 17\n-2 31\n-4 65\n4 23\n1 1000000000\n4 1000000000\n"' do
    io = IO.popen("ruby abc240/F.rb", "w+")
    io.puts("3\n3 7\n-1 2\n2 3\n-3 2\n10 472\n-4 12\n1 29\n2 77\n-1 86\n0 51\n3 81\n3 17\n-2 31\n-4 65\n4 23\n1 1000000000\n4 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n53910\n2000000002000000000\n")
  end

end
