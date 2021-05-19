class LawOfDemeter

  def my_funky_method(user, business)
    # this are all allowed
    a_different_method!
    user.do_something
    invoice.number
    invoice.number.to_s.upcase

    business.settings.subscription_settings   # not allowed

    business.sales_invoices.active.not_voided.unpaid.each do |invoice|
      invoice.line_items.each do |line_item|
        #...
      end
    end
  end

  def a_different_method!
    # ...
  end

  def invoice
    # ...
  end
end
