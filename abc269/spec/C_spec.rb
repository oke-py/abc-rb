RSpec.describe 'test' do
  it 'test with "11\n"' do
    io = IO.popen("ruby abc269/C.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n2\n3\n8\n9\n10\n11\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc269/C.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "576461302059761664\n"' do
    io = IO.popen("ruby abc269/C.rb", "w+")
    io.puts("576461302059761664\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n524288\n549755813888\n549756338176\n576460752303423488\n576460752303947776\n576461302059237376\n576461302059761664\n")
  end

end
