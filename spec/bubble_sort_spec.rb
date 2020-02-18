require './bubble_sort'

RSpec.describe BubbleSort do

  let(:sort) { BubbleSort.new }
  
  describe '#bubble_sort' do
    it 'returns sorted array' do
      expect(sort.bubble_sort([4, 3, 78, 2, 0, 2])).to eql([0, 2, 2, 3, 4, 78])
    end
  end

  describe '#bubble_sort_by' do
    it 'returns sorted string array' do
      expect(sort.bubble_sort_by(['hey', 'hello', 'hi']) { |left, right| left.length - right.length }).to eq(['hi', 'hey', 'hello'])
    end
  end
end
