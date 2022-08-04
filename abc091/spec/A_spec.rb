RSpec.describe 'test' do
  it 'test with "50 100 120\n"' do
    io = IO.popen("ruby abc091/A.rb", "w+")
    io.puts("50 100 120\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "500 100 1000\n"' do
    io = IO.popen("ruby abc091/A.rb", "w+")
    io.puts("500 100 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "19 123 143\n"' do
    io = IO.popen("ruby abc091/A.rb", "w+")
    io.puts("19 123 143\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "19 123 142\n"' do
    io = IO.popen("ruby abc091/A.rb", "w+")
    io.puts("19 123 142\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
