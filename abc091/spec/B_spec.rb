RSpec.describe 'test' do
  it 'test with "3\napple\norange\napple\n1\ngrape\n"' do
    io = IO.popen("ruby abc091/B.rb", "w+")
    io.puts("3\napple\norange\napple\n1\ngrape\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\napple\norange\napple\n5\napple\napple\napple\napple\napple\n"' do
    io = IO.popen("ruby abc091/B.rb", "w+")
    io.puts("3\napple\norange\napple\n5\napple\napple\napple\napple\napple\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1\nvoldemort\n10\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\n"' do
    io = IO.popen("ruby abc091/B.rb", "w+")
    io.puts("1\nvoldemort\n10\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\nvoldemort\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\nred\nred\nblue\nyellow\nyellow\nred\n5\nred\nred\nyellow\ngreen\nblue\n"' do
    io = IO.popen("ruby abc091/B.rb", "w+")
    io.puts("6\nred\nred\nblue\nyellow\nyellow\nred\n5\nred\nred\nyellow\ngreen\nblue\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
