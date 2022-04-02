RSpec.describe 'test' do
  it 'test with "6 7\n1 2\n1 3\n2 4\n2 5\n3 4\n4 6\n5 6\n"' do
    IO.popen("ruby #{__dir__}/../063.rb", "w+") do |io|
      io.puts("6 7\n1 2\n1 3\n2 4\n2 5\n3 4\n4 6\n5 6\n")
      io.close_write
      expect(io.readlines.join).to eq("0\n1\n1\n2\n2\n3\n")
    end
  end

end
