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
			without_doubles(6,6,false).must_equal(12)
		end
	end
	describe 'max_maybe' do
		it '5 is larger' do
			max_maybe(5,2).must_equal(5)
		end
		it '5 is larger' do
			max_maybe(-2,5).must_equal(5)
		end
		it '3 is smaller, but has the same remainder when divided by 5' do
			max_maybe(3,18).must_equal(3)
		end
		it '0 becasue the values are the same' do
			max_maybe(5,5).must_equal(0)
		end
	end
	describe 'squirrels_play?' do
		it 'squirrels should play' do
			squirrels_play?(75,true).must_equal(true)
		end
		it 'squirrels should play' do
			squirrels_play?(75,false).must_equal(true)
		end
		it 'squirrels should not play' do
			squirrels_play?(100,false).must_equal(false)
		end
		it 'squirrels should play' do
			squirrels_play?(100,true).must_equal(true)
		end
		it 'squirrels should not play' do
			squirrels_play?(59,true).must_equal(false)
		end
		it 'squirrels should not play' do
			squirrels_play?(59,false).must_equal(false)
		end
	end
end
