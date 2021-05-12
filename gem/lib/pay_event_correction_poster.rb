class PayEventCorrectionPoster
  class << self
    attr_accessor :pay_input_line_class
  end

  attr_reader :pay_event

  def initialize(pay_event)
    @pay_event = pay_event
  end

  def call(amount)
    pay_event.pay_input_lines.each do |line|
      if line.some_business_logic?(amount)
        # do something
      else
        # do something else
      end
    end

    correction = self.class.pay_input_line_class.new
    correction.business = pay_event.business
    correction.pay_event = pay_event
    correction.fixed_amount = amount.abs
    pay_event.pay_input_lines << correction

    pay_event.save!
  end
end
