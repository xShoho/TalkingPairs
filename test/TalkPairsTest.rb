require_relative "../src/TalkPairs"

describe TalkPairs do

	context 'Initialize object' do
		it 'should have property "pairs" of value [1, 2, 3]' do
			subject.elements = [1, 2, 3]
			expect(subject.elements).to eql([1, 2, 3])
		end
	end

	describe '#checkPairs' do
		context 'Given [1, 2, 3]' do
			it 'should have count equal 2' do
				subject.elements = [1, 2, 3]
				subject.checkPairs()
				expect(subject.count).to eql(2)
			end
		end

		context 'Given [2, 1, 4, 3, 6, 5]' do
			it 'should have count equal 7' do
				subject.elements = [2, 1, 4, 3, 6, 5]
				subject.checkPairs()
				expect(subject.count).to eql(7)
			end
		end

		context 'Given [2, 2, 2, 2, 2]' do
			it 'should have count equal 4' do
				subject.elements = [2, 2, 2, 2, 2]
				subject.checkPairs()
				expect(subject.count).to eql(4)
			end
		end

		context 'Given [6, 6, 7, 4, 8, 3, 8, 2]' do
			it 'should have count equal 9' do
				subject.elements = [6, 6, 7, 4, 8, 3, 8, 2]
				subject.checkPairs()
				expect(subject.count).to eql(9)
			end
		end

		context 'Given [7, 2, 9, 10, 9, 5, 2, 5, 4, 10, 9, 9, 1, 9, 8, 8, 9, 4, 9, 4, 8]' do
			it "should have count equal 26" do
				subject.elements = [7, 2, 9, 10, 9, 5, 2, 5, 4, 10, 9, 9, 1, 9, 8, 8, 9, 4, 9, 4, 8]
				subject.checkPairs()
				expect(subject.count).to eql(26)
			end
		end
	end
end