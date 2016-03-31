describe '.sum' do
  let(:empty_array) { [] }
  let(:simple_num_array) { [1, 2, 3] }
  let(:non_num_array) { %w(a b c) }
  let(:cmplx_num_array) { [[1], [2], [3]] }

  it 'handles an empty array properly' do
    expect(empty_array.sum).to equal(nil)
  end

  it 'handles an empty array with a identity value properly' do
    expect(empty_array.sum(5)).to equal(5)
  end

  it 'handles a numerical array properly' do
    expect(simple_num_array.sum).to equal(6)
  end

  it 'handles a non-numerical array properly' do
    expect(non_num_array.sum).to eq('abc')
  end

  it 'handles a complex numerical array properly' do
    expect(cmplx_num_array.sum).to eq([1, 2, 3])
  end
end
