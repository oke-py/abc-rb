RSpec.describe 'test' do
  it 'test with "3\ntanaka taro\nsato hanako\ntanaka taro\n"' do
    io = IO.popen("ruby abc216/B.rb", "w+")
    io.puts("3\ntanaka taro\nsato hanako\ntanaka taro\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\nsaito ichiro\nsaito jiro\nsaito saburo\n"' do
    io = IO.popen("ruby abc216/B.rb", "w+")
    io.puts("3\nsaito ichiro\nsaito jiro\nsaito saburo\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4\nsypdgidop bkseq\nbajsqz hh\nozjekw mcybmtt\nqfeysvw dbo\n"' do
    io = IO.popen("ruby abc216/B.rb", "w+")
    io.puts("4\nsypdgidop bkseq\nbajsqz hh\nozjekw mcybmtt\nqfeysvw dbo\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
