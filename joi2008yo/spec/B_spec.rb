RSpec.describe 'test' do
  it 'test with "JOIJOI\n"' do
    io = IO.popen("ruby joi2008yo/B.rb", "w+")
    io.puts("JOIJOI\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n0\n")
  end

  it 'test with "JOIOIOIOI\n"' do
    io = IO.popen("ruby joi2008yo/B.rb", "w+")
    io.puts("JOIOIOIOI\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n")
  end

  it 'test with "JOIOIJOINXNXJIOIOIOJ\n"' do
    io = IO.popen("ruby joi2008yo/B.rb", "w+")
    io.puts("JOIOIJOINXNXJIOIOIOJ\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n3\n")
  end

end
