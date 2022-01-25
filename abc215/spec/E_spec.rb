RSpec.describe 'test' do
  it 'test with "4\nBGBH\n"' do
    io = IO.popen("ruby abc215/E.rb", "w+")
    io.puts("4\nBGBH\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "100\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBIEIJEIJIJCGCCFGIEBIHFCGFBFAEJIEJAJJHHEBBBJJJGJJJCCCBAAADCEHIIFEHHBGF\n"' do
    io = IO.popen("ruby abc215/E.rb", "w+")
    io.puts("100\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBIEIJEIJIJCGCCFGIEBIHFCGFBFAEJIEJAJJHHEBBBJJJGJJJCCCBAAADCEHIIFEHHBGF\n")
    io.close_write
    expect(io.readlines.join).to eq("330219020\n")
  end

end
