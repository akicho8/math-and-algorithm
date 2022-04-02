RSpec.describe 'test' do
  it 'test with "6\n"' do
    IO.popen("ruby #{__dir__}/../042.rb", "w+") do |io|
      io.puts("6\n")
      io.close_write
      expect(io.readlines.join).to eq("8\n")
    end
  end

  it 'test with "8691200\n"' do
    IO.popen("ruby #{__dir__}/../042.rb", "w+") do |io|
      io.puts("8691200\n")
      io.close_write
      expect(io.readlines.join).to eq("922041576\n")
    end
  end

end
