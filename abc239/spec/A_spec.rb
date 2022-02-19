RSpec.describe 'test' do
  it 'test with "333\n"' do
    io = IO.popen("ruby abc239/A.rb", "w+")
    io.puts("333\n")
    io.close_write
    expect(io.readlines.join).to eq("65287.907678222\n")
  end

  it 'test with "634\n"' do
    io = IO.popen("ruby abc239/A.rb", "w+")
    io.puts("634\n")
    io.close_write
    expect(io.readlines.join).to eq("90086.635834623\n")
  end

end
