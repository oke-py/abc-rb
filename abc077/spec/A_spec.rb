RSpec.describe 'test' do
  it 'test with "pot\ntop\n"' do
    io = IO.popen("ruby abc077/A.rb", "w+")
    io.puts("pot\ntop\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "tab\nbet\n"' do
    io = IO.popen("ruby abc077/A.rb", "w+")
    io.puts("tab\nbet\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "eye\neel\n"' do
    io = IO.popen("ruby abc077/A.rb", "w+")
    io.puts("eye\neel\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
