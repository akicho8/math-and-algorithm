RSpec.describe 'test' do
  it 'test with "2\n3 5\n"' do
    IO.popen("ruby #{__dir__}/../059.rb", "w+") do |io|
      io.puts("2\n3 5\n")
      io.close_write
      expect(io.readlines.join).to eq("13\n")
    end
  end

end
