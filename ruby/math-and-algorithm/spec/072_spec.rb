RSpec.describe 'test' do
  it 'test with "21 40\n"' do
    IO.popen("ruby #{__dir__}/../072.rb", "w+") do |io|
      io.puts("21 40\n")
      io.close_write
      expect(io.readlines.join).to eq("4\n")
    end
  end

  it 'test with "101 130\n"' do
    IO.popen("ruby #{__dir__}/../072.rb", "w+") do |io|
      io.puts("101 130\n")
      io.close_write
      expect(io.readlines.join).to eq("6\n")
    end
  end

  it 'test with "1 100\n"' do
    IO.popen("ruby #{__dir__}/../072.rb", "w+") do |io|
      io.puts("1 100\n")
      io.close_write
      expect(io.readlines.join).to eq("25\n")
    end
  end

  it 'test with "217 217\n"' do
    IO.popen("ruby #{__dir__}/../072.rb", "w+") do |io|
      io.puts("217 217\n")
      io.close_write
      expect(io.readlines.join).to eq("0\n")
    end
  end

  it 'test with "999999500000 1000000000000\n"' do
    IO.popen("ruby #{__dir__}/../072.rb", "w+") do |io|
      io.puts("999999500000 1000000000000\n")
      io.close_write
      expect(io.readlines.join).to eq("18228\n")
    end
  end

end
