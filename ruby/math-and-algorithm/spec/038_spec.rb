RSpec.describe 'test' do
  it 'test with "10\n7\n0 3\n2 4\n1 3\n0 3\n5 6\n5 6\n5 6\n"' do
    IO.popen("ruby #{__dir__}/../038.rb", "w+") do |io|
      io.puts("10\n7\n0 3\n2 4\n1 3\n0 3\n5 6\n5 6\n5 6\n")
      io.close_write
      expect(io.readlines.join).to eq("2\n3\n4\n1\n0\n3\n0\n0\n0\n0\n")
    end
  end

end
