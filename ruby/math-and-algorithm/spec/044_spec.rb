RSpec.describe 'test' do
  it 'test with "1 2\n"' do
    IO.popen("ruby #{__dir__}/../044.rb", "w+") do |io|
      io.puts("1 2\n")
      io.close_write
      expect(io.readlines.join).to eq("3\n")
    end
  end

  it 'test with "869 120\n"' do
    IO.popen("ruby #{__dir__}/../044.rb", "w+") do |io|
      io.puts("869 120\n")
      io.close_write
      expect(io.readlines.join).to eq("445891023\n")
    end
  end

end
