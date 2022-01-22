RSpec.describe 'test' do
  it 'test with "3\n5 6\n2 1\n3 4\n2 3\n"' do
    io = IO.popen("ruby abc219/D.rb", "w+")
    io.puts("3\n5 6\n2 1\n3 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n8 8\n3 4\n2 3\n2 1\n"' do
    io = IO.popen("ruby abc219/D.rb", "w+")
    io.puts("3\n8 8\n3 4\n2 3\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
