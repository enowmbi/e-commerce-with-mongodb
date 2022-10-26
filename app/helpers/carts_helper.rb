module CartsHelper
  def justify_serial_number(serial_number)
    serial_number.to_s.rjust(2, '0')
  end

  def justify_quantity(quantity)
    quantity.to_s.rjust(2, '0')
  end
end
