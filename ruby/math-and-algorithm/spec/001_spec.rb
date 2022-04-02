RSpec.describe 'test' do
  it 'test with "2\n"' do
    IO.popen("ruby #{__dir__}/../001.rb", "w+") do |io|
      io.puts("2\n")
      io.close_write
      expect(io.readlines.join).to eq("7\n")
    end
  end

  it 'test with "4\n"' do
    IO.popen("ruby #{__dir__}/../001.rb", "w+") do |io|
      io.puts("4\n")
      io.close_write
      expect(io.readlines.join).to eq("9\n")
    end
  end

  it 'test with "8\n"' do
    IO.popen("ruby #{__dir__}/../001.rb", "w+") do |io|
      io.puts("8\n")
      io.close_write
      expect(io.readlines.join).to eq("13\n")
    end
  end

end
