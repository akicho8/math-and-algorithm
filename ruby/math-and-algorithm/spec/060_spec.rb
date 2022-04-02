RSpec.describe 'test' do
  it 'test with "3\n1 3 5\n"' do
    IO.popen("ruby #{__dir__}/../060.rb", "w+") do |io|
      io.puts("3\n1 3 5\n")
      io.close_write
      expect(io.readlines.join).to eq("8\n")
    end
  end

end
