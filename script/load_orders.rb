Order.transaction do
  (1..100).each do |i|
    Order.create(name: "Zákazník #{i}", address: "#{i} Hlavni",
    email: "zakaznik-#{i}@nekde.cz",
    pay_type: "Dobirka")
  end
end
