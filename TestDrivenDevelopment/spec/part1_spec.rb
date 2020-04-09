require 'rspec'
require 'part1'


describe "my_uniq" do   # Rspec doesn't work if method name isn't in string format
    let(:arr) { [1, 2, 5, 3, 1, 5, 7] } # [1, 2, 5, 3, 7]
    
    disallowed_methods = [                  #allows us to state which methods are not allowed for the test spec, we can create an array of built-in method symbols
        :uniq
    ]

    before(:each) do                        # We can apply before(:each) to check each *it* test case if they receive a disallowed method
        # disallowed_methods.each do |method|
            expect(arr).not_to receive(:uniq)
        # end
    end

    it 'should remove duplicates from array' do 
        expect(my_uniq(arr)).to eq([1, 2, 5, 3, 7])
    end

    it 'should not change an empty array' do    # variables do NOT extend past *it* blocks <can circumvent this by using let(:name) or subject(:name) at very top of 'describe' block>
        expect(my_uniq([])).to eq([])
    end

end

describe "two_sum" do   
    let(:arr1) { [-1, 0, 2, -2, 1] }
    let(:arr2) {[12, 46, 24, 63, 11]}
    let(:arr3) {[]}

    it "should return all pairs of positions where the respective elements sum to 0" do
        expect(two_sum(arr1)).to eq([[0, 4], [2, 3]])   # expect_statement used : #to eq()
    end

    it "should return pairs in sorted order" do
        expect(two_sum(arr1)).to_not eq([[2, 3], [0, 4]])   # expect_statement used: #to_not eq()
    end

    it "returns empty array when no pairs are found" do
        expect(two_sum(arr2)).to eq([])
    end

    it "return empty array when no args are passed" do
        expect(two_sum(arr3)).to eq([])
    end

    it "result should be an array" do
        expect(two_sum([1, 2, 3, 4])).to be_a(Array)    # expectation used: to be_a()

    end

    it "should not raise error" do
        expect{ two_sum(arr1) }.not_to raise_error      # expectation used: .not_to raise_error
    end

end

describe "my_transpose" do 
    let(:arr) { [[1, 2, 3], ['x', 'y', 'z'], [4, 5, 6]] }

    # disallowed_methods = [    # Commented-out because we only have 1 method to disclude
    #     :transpose
    # ]

    before(:each) do
        expect(arr).to_not receive(:transpose)
    end

    it "swaps row and column orientation based on their ...(respective matching indices)?" do
        expect(arr.my_transpose).to eq([[1, 'x', 4], [2, 'y', 5], [3, 'z', 6]])
    end

    it "each sub array's length is equal to length of outer array" do
        expect(arr.all? { |ele| ele.length == arr.length }).to eq(true)
    end

end

describe "stock_picker" do 
    let(:arr) { [48, 27, 110, 220, 86, 37, 16, 105] }

    it "should return the indices of the biggest difference in price" do
        expect(stock_picker(arr)).to eq([1, 3])
    end

    it "" do
        
    end
end

