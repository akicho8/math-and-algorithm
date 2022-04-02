RSpec.describe 'test' do
  it 'test with "5 9\n"' do
    IO.popen("ruby #{__dir__}/../070.rb", "w+") do |io|
      io.puts("5 9\n")
      io.close_write
      expect(io.readlines.join).to eq("2\n")
    end
  end

  it 'test with "8 16\n"' do
    IO.popen("ruby #{__dir__}/../070.rb", "w+") do |io|
      io.puts("8 16\n")
      io.close_write
      expect(io.readlines.join).to eq("5\n")
    end
  end

  it 'test with "3 20\n"' do
    IO.popen("ruby #{__dir__}/../070.rb", "w+") do |io|
      io.puts("3 20\n")
      io.close_write
      expect(io.readlines.join).to eq("0\n")
    end
  end

  it 'test with "29 47\n"' do
    IO.popen("ruby #{__dir__}/../070.rb", "w+") do |io|
      io.puts("29 47\n")
      io.close_write
      expect(io.readlines.join).to eq("97\n")
    end
  end

  it 'test with "100 160\n"' do
    IO.popen("ruby #{__dir__}/../070.rb", "w+") do |io|
      io.puts("100 160\n")
      io.close_write
      expect(io.readlines.join).to eq("1213\n")
    end
  end

end
