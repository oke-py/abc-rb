RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc212/G.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "11\n"' do
    io = IO.popen("ruby abc212/G.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq("64\n")
  end

  it 'test with "998244353\n"' do
    io = IO.popen("ruby abc212/G.rb", "w+")
    io.puts("998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("329133417\n")
  end

end
