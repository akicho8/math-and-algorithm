RSpec.describe 'test' do
  it 'test with "10\n"' do
    IO.popen("ruby #{__dir__}/../071.rb", "w+") do |io|
      io.puts("10\n")
      io.close_write
      expect(io.readlines.join).to eq("14\n")
    end
  end

  it 'test with "9\n"' do
    IO.popen("ruby #{__dir__}/../071.rb", "w+") do |io|
      io.puts("9\n")
      io.close_write
      expect(io.readlines.join).to eq("12\n")
    end
  end

  it 'test with "160\n"' do
    IO.popen("ruby #{__dir__}/../071.rb", "w+") do |io|
      io.puts("160\n")
      io.close_write
      expect(io.readlines.join).to eq("52\n")
    end
  end

  it 'test with "869120\n"' do
    IO.popen("ruby #{__dir__}/../071.rb", "w+") do |io|
      io.puts("869120\n")
      io.close_write
      expect(io.readlines.join).to eq("3732\n")
    end
  end

  it 'test with "2147483647\n"' do
    IO.popen("ruby #{__dir__}/../071.rb", "w+") do |io|
      io.puts("2147483647\n")
      io.close_write
      expect(io.readlines.join).to eq("4294967296\n")
    end
  end

end
