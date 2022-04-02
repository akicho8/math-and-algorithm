RSpec.describe 'test' do
  it 'test with "2\n"' do
    IO.popen("ruby #{__dir__}/../069.rb", "w+") do |io|
      io.puts("2\n")
      io.close_write
      expect(io.readlines.join).to eq("9\n")
    end
  end

  it 'test with "869120\n"' do
    IO.popen("ruby #{__dir__}/../069.rb", "w+") do |io|
      io.puts("869120\n")
      io.close_write
      expect(io.readlines.join).to eq("497335961\n")
    end
  end

end
