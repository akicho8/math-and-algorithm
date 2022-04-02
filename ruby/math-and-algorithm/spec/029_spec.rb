RSpec.describe 'test' do
  it 'test with "5\n2 5 3 3 1\n"' do
    IO.popen("ruby #{__dir__}/../029.rb", "w+") do |io|
      io.puts("5\n2 5 3 3 1\n")
      io.close_write
      expect(io.readlines.join).to eq("8\n")
    end
  end

end
