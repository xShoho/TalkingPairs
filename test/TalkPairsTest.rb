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
	end
end