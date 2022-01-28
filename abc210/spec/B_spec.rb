RSpec.describe 'test' do
  it 'test with "5\n00101\n"' do
    io = IO.popen("ruby abc210/B.rb", "w+")
    io.puts("5\n00101\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "3\n010\n"' do
    io = IO.popen("ruby abc210/B.rb", "w+")
    io.puts("3\n010\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

end
