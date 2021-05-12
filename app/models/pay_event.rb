class PayEvent < ActiveRecord::Base

  belongs_to :business

  has_many :pay_input_lines

  validates_presence_of :business

  # ...

  # method with ~50 lines
  def post_correction(amount)
    pay_input_lines.each do |line|
      if line.some_business_logic?(amount)
        # do something
      else
        # do something else
      end
    end

    correction = PayInputLine.new
    correction.business = self.business
    correction.pay_event = self
    correction.fixed_amount = amount.abs
    pay_input_lines << correction

    save!
  end

  # ...
end
