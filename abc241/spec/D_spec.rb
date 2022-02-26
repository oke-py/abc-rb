RSpec.describe 'test' do
  it 'test with "11\n1 20\n1 10\n1 30\n1 20\n3 15 1\n3 15 2\n3 15 3\n3 15 4\n2 100 5\n1 1\n2 100 5\n"' do
    io = IO.popen("ruby abc241/D.rb", "w+")
    io.puts("11\n1 20\n1 10\n1 30\n1 20\n3 15 1\n3 15 2\n3 15 3\n3 15 4\n2 100 5\n1 1\n2 100 5\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n20\n30\n-1\n-1\n1\n")
  end

end
