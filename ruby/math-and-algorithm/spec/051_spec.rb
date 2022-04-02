RSpec.describe 'test' do
  it 'test with "10\n"' do
    IO.popen("ruby #{__dir__}/../051.rb", "w+") do |io|
      io.puts("10\n")
      io.close_write
      expect(io.readlines.join).to eq("4\n")
    end
  end

end
