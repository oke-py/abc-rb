RSpec.describe 'test' do
  it 'test with "2 3\n"' do
    io = IO.popen("ruby abc263/C.rb", "w+")
    io.puts("2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 \n1 3 \n2 3 \n")
  end

  it 'test with "3 5\n"' do
    io = IO.popen("ruby abc263/C.rb", "w+")
    io.puts("3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 \n1 2 4 \n1 2 5 \n1 3 4 \n1 3 5 \n1 4 5 \n2 3 4 \n2 3 5 \n2 4 5 \n3 4 5 \n")
  end

end
