require 'rspec'
require_relative 'implementations.rb'

describe '#valid?' do
  subject { Implementations.new([1, 2, 3]) }
  context 'when array is not empty' do
    it 'array valid' do
      expect(subject.valid?).to eq true
    end
  end

  context 'when array empty' do
    subject { Implementations.new([]) }
    it 'array nill' do
      expect(subject.valid?).to eq false
    end
  end
end

describe '#my_map' do
  subject { Implementations.new([1, 2, 3]) }
  context 'when array valid' do
    it 'should return right array' do
      expect(subject.my_map { |element| element + 1 }).to eq [2, 3, 4]
    end
  end
end

describe '#my_select' do
  subject { Implementations.new([1, 2, 3]) }
  context 'when array valid' do
    it 'should return right array' do
      expect(subject.my_select { |element| element > 2 }).to eq [3]
    end
  end
end

describe '#my_each' do
  subject { Implementations.new([1, 2, 3]) }
  context 'when strings valid' do
    it 'should return right string' do
      expectation = expect do
        (subject.my_each { |element| puts element * 2 })
      end
      expectation.to output("2\n4\n6\n").to_stdout
    end
  end
end
