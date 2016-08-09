class View
  def print_contacts(addresses)
    addresses.each_with_index do |contact, index|
      puts "#{index + 1}: #{contact.first_name} #{contact.last_name}"
    end
  end

  def get_first_name
    puts "What's the contact's first name?"
    gets.chomp
  end

  def get_last_name
    puts "What's the contact's last name?"
    gets.chomp
  end

  def get_number
    puts "What's the contact's number?"
    gets.chomp
  end

  def get_city
    puts "What's the contact's city?"
    gets.chomp
  end

  def get_contact_id_delete
    puts "Which contact do you want to delete?"
    gets.chomp.to_i - 1
  end

  def get_contact_index
    puts "Which contact do you want to edit"
    gets.chomp.to_i - 1
  end

  def get_field_to_edit
    puts "Which field do you want to edit?\n
          1 - First Name
          2 - Last Name
          3 - Number
          4 - City"
    gets.chomp.to_i
  end

  def get_new_value
    puts "What's the new value?"
    gets.chomp.to_s
  end


end



