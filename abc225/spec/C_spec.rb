RSpec.describe 'test' do
  it 'test with "2 3\n1 2 3\n8 9 10\n"' do
    io = IO.popen("ruby abc225/C.rb", "w+")
    io.puts("2 3\n1 2 3\n8 9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 1\n1\n2\n"' do
    io = IO.popen("ruby abc225/C.rb", "w+")
    io.puts("2 1\n1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "10 4\n1346 1347 1348 1349\n1353 1354 1355 1356\n1360 1361 1362 1363\n1367 1368 1369 1370\n1374 1375 1376 1377\n1381 1382 1383 1384\n1388 1389 1390 1391\n1395 1396 1397 1398\n1402 1403 1404 1405\n1409 1410 1411 1412\n"' do
    io = IO.popen("ruby abc225/C.rb", "w+")
    io.puts("10 4\n1346 1347 1348 1349\n1353 1354 1355 1356\n1360 1361 1362 1363\n1367 1368 1369 1370\n1374 1375 1376 1377\n1381 1382 1383 1384\n1388 1389 1390 1391\n1395 1396 1397 1398\n1402 1403 1404 1405\n1409 1410 1411 1412\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
