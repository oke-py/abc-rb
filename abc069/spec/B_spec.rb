RSpec.describe 'test' do
  it 'test with "internationalization\n"' do
    io = IO.popen("ruby abc069/B.rb", "w+")
    io.puts("internationalization\n")
    io.close_write
    expect(io.readlines.join).to eq("i18n\n")
  end

  it 'test with "smiles\n"' do
    io = IO.popen("ruby abc069/B.rb", "w+")
    io.puts("smiles\n")
    io.close_write
    expect(io.readlines.join).to eq("s4s\n")
  end

  it 'test with "xyz\n"' do
    io = IO.popen("ruby abc069/B.rb", "w+")
    io.puts("xyz\n")
    io.close_write
    expect(io.readlines.join).to eq("x1z\n")
  end

end
