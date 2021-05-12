class PayEvent < ActiveRecord::Base

  belongs_to :business

  has_many :pay_input_lines

  validates_presence_of :business

  # ...

  # method one line
  def post_correction(amount)
    PayEventCorrectionPoster.new(self).call(amount)
  end

  # ...
end
