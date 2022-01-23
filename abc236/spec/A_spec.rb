RSpec.describe 'test' do
  it 'test with "chokudai\n3 5\n"' do
    io = IO.popen("ruby abc236/A.rb", "w+")
    io.puts("chokudai\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("chukodai\n")
  end

  it 'test with "aa\n1 2\n"' do
    io = IO.popen("ruby abc236/A.rb", "w+")
    io.puts("aa\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("aa\n")
  end

  it 'test with "aaaabbbb\n1 8\n"' do
    io = IO.popen("ruby abc236/A.rb", "w+")
    io.puts("aaaabbbb\n1 8\n")
    io.close_write
    expect(io.readlines.join).to eq("baaabbba\n")
  end

end
