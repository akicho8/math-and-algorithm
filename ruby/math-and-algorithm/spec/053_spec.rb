RSpec.describe 'test' do
  it 'test with "2\n"' do
    IO.popen("ruby #{__dir__}/../053.rb", "w+") do |io|
      io.puts("2\n")
      io.close_write
      expect(io.readlines.join).to eq("First\n")
    end
  end

  it 'test with "3\n"' do
    IO.popen("ruby #{__dir__}/../053.rb", "w+") do |io|
      io.puts("3\n")
      io.close_write
      expect(io.readlines.join).to eq("Second\n")
    end
  end

  it 'test with "1000000000000000000\n"' do
    IO.popen("ruby #{__dir__}/../053.rb", "w+") do |io|
      io.puts("1000000000000000000\n")
      io.close_write
      expect(io.readlines.join).to eq("First\n")
    end
  end

end
