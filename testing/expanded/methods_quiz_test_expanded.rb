#To setup, add the following to your gem file and run 'bundle':
#
# gem 'minitest'
# gem 'minitest-reporters'
require './testing/test_setup'
require './methods_quiz2'

describe 'methods_quiz2' do
	describe 'without_doubles' do
		it 'Gives the sum of 7' do
			without_doubles(2,5,true).must_equal(7)
		end
		it 'Gives the sum of 7' do
			without_doubles(2,5,false).must_equal(7)
		end
		it 'Gives the sum of 5' do
			without_doubles(2,2,true).must_equal(5)
		end
		it 'Gives the sum of 4' do
			without_doubles(2,2,false).must_equal(4)
		end
		it 'Gives the sum of 7' do
			without_doubles(6,6,true).must_equal(7)
		end
		it 'Gives the sum of 12' do
			without_doubles(6,6,false).must_equal(7)
		end
	end
end
