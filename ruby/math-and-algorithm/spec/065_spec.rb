RSpec.describe 'test' do
  it 'test with "29000\n"' do
    IO.popen("ruby #{__dir__}/../065.rb", "w+") do |io|
      io.puts("29000\n")
      io.close_write
      expect(io.readlines.join).to eq("7\n")
    end
  end

end
