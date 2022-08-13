RSpec.describe 'test' do
  it 'test with "catredo\n"' do
    io = IO.popen("ruby abc264/D.rb", "w+")
    io.puts("catredo\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc264/D.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "redocta\n"' do
    io = IO.popen("ruby abc264/D.rb", "w+")
    io.puts("redocta\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

end
