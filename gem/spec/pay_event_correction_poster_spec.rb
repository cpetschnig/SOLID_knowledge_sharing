require_relative '../lib/pay_event_correction_poster'

class DummyPayInputLine
  attr_accessor :business, :pay_event, :fixed_amount
end

RSpec.describe PayEventCorrectionPoster do
  subject { described_class.new(pay_event) }

  let(:pay_event) do
    double('PayEvent',
      business: business,
      pay_input_lines: [pay_input_line_0],
      save!: nil
    )
  end

  let(:business) do
    double('Business')
  end

  let(:pay_input_line_0) do
    double('PayInputLine #0',
      some_business_logic?: business_logic_result
    )
  end

  let(:business_logic_result) { true }

  describe '#call' do
    let(:amount) { 42 }

    before do
      described_class.pay_input_line_class = DummyPayInputLine
    end

    it 'adds a new item to pay_input_lines' do
      expect { subject.call(amount) }.to change { pay_event.pay_input_lines.count }.by(1)
    end
  end
end
