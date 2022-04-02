RSpec.describe 'test' do
  it 'test with "5\n"' do
    IO.popen("ruby #{__dir__}/../010.rb", "w+") do |io|
      io.puts("5\n")
      io.close_write
      expect(io.readlines.join).to eq("120\n")
    end
  end

end
