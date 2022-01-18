RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc220/H.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "20 3\n5 6\n3 4\n1 2\n"' do
    io = IO.popen("ruby abc220/H.rb", "w+")
    io.puts("20 3\n5 6\n3 4\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("458752\n")
  end

end
