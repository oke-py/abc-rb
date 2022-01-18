RSpec.describe 'test' do
  it 'test with "123 456 100\n"' do
    io = IO.popen("ruby abc220/A.rb", "w+")
    io.puts("123 456 100\n")
    io.close_write
    expect(io.readlines.join).to eq("200\n")
  end

  it 'test with "630 940 314\n"' do
    io = IO.popen("ruby abc220/A.rb", "w+")
    io.puts("630 940 314\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
