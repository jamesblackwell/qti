describe Qti::V1::Models::BankEntryItem do
  let(:file_path) { File.join('spec', 'fixtures', 'items_1.2', 'bank_entry_item.xml') }
  let(:test_object) { Qti::V1::Models::Assessment.from_path!(file_path) }
  let(:assessment_item_refs) { test_object.assessment_items }
  let(:loaded_class) { described_class.new(assessment_item_refs.first) }

  it 'configures a bank entry item correctly' do
    expect(loaded_class.sourcebank_ref).to eq('gafe7177102bee6759845b002c5de397c')
    expect(loaded_class.item_ref).to eq('ge0c6b84f2afc834ec575718bbc1451ff')
    expect(loaded_class.points_possible).to eq('2.0')
  end
end
