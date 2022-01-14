RSpec.describe 'test' do
  it 'test with "4\n1 1048577\n1 1\n2 2097153\n2 3\n"' do
    io = IO.popen("ruby abc228/D.rb", "w+")
    io.puts("4\n1 1048577\n1 1\n2 2097153\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1048577\n-1\n")
  end

end
