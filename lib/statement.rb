class Statement

  def print(record)
    puts 'date || credit || debit || balance'
    record.history.reverse_each do |transaction|
      printed_transaction = "#{transaction[:date].to_s}" + " || " + \
      "#{transaction[:credit].to_s}" + " || " + "#{transaction[:debit].to_s}" \
      + " || " + "#{transaction[:balance].to_s}"
      puts printed_transaction
    end
  end
end
