RSpec.describe 'test' do
  it 'test with "3\nBB.\n.B.\n...\n"' do
    io = IO.popen("ruby abc229/H.rb", "w+")
    io.puts("3\nBB.\n.B.\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with ".B.\n.B.\n...\n"' do
    io = IO.popen("ruby abc229/H.rb", "w+")
    io.puts(".B.\n.B.\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n..\nWW\n")
  end

  it 'test with "Snuke\n"' do
    io = IO.popen("ruby abc229/H.rb", "w+")
    io.puts("Snuke\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
