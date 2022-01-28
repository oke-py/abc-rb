RSpec.describe 'test' do
  it 'test with "chchokudai\n"' do
    io = IO.popen("ruby abc211/C.rb", "w+")
    io.puts("chchokudai\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "atcoderrr\n"' do
    io = IO.popen("ruby abc211/C.rb", "w+")
    io.puts("atcoderrr\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "chokudaichokudaichokudai\n"' do
    io = IO.popen("ruby abc211/C.rb", "w+")
    io.puts("chokudaichokudaichokudai\n")
    io.close_write
    expect(io.readlines.join).to eq("45\n")
  end

end
