RSpec.describe 'test' do
  it 'test with "6\nabcabc\n"' do
    io = IO.popen("ruby abc145/B.rb", "w+")
    io.puts("6\nabcabc\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\nabcadc\n"' do
    io = IO.popen("ruby abc145/B.rb", "w+")
    io.puts("6\nabcadc\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1\nz\n"' do
    io = IO.popen("ruby abc145/B.rb", "w+")
    io.puts("1\nz\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
