require 'pry'

class CRM

  def initialize(crm_name)
    @crm_name = crm_name
  end

  def main_menu
    while true
      print_main_menu
      user_input = gets.to_i
      call_option(user_input)
    end
  end

  def print_main_menu
    puts '1 - Add a contact'
    puts '2 - Update existing contact details'
    puts '3 - Delete a contact'
    puts '4 - Display contacts list'
    puts '5 - Search contacts by attribute'
    puts '6 - Exit'
    puts 'Enter your choice:'
  end

  def call_option(user_input)
    if user_input <= 0 || user_input > 6
      main_menu
    elsif user_input == 1
      add_new_contact
    elsif user_input == 2
      modify_existing_contact
    elsif user_input == 3
      delete
    elsif user_input == 4
      display_all_contacts
    elsif user_input == 5
      contact = search_by_attribute
      puts contact.inspect
    else user_input == 6
      exit
    end
  end

  def add_new_contact
    puts "Enter first name:"
    first_name = gets.chomp

    puts "Enter last name:"
    last_name = gets.chomp

    puts "Enter email:"
    email = gets.chomp

    puts "Enter notes:"
    notes = gets.chomp

    contact = Contact.create(
      first_name: first_name,
      last_name:  last_name,
      email:      email,
      note:       notes
      )
  end

  def modify_existing_contact
    contact = search_by_attribute
    puts "What would you like to modify?"
    puts "1 - First Name"
    puts "2 - Last Name"
    puts "3 - Email"
    puts "4 - Notes"
    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3 || user_input == 4
      user_input = gets.chomp.to_i
      if user_input == 1
        attribute = :first_name
        puts "What is #{contact.first_name}'s new name?"
        value = gets.chomp
        contact.update({attribute => value})
      elsif user_input == 2
        attribute = :last_name
        puts "What is #{contact.first_name}'s new last name?"
        value = gets.chomp
        contact.update({attribute => value})
      elsif user_input == 3
        attribute = :email
        puts "What is #{contact.first_name}'s new email?"
        value = gets.chomp
        contact.update({attribute => value})
      elsif user_input == 4
        attribute = :notes
        puts "What are #{contact.first_name}'s new notes?"
        value = gets.chomp
        contact.update({attribute => value})
      else
        user_input = nil
      end
    end
  end

  def delete
    contact = search_by_attribute
    return unless contact
    contact.destroy
  end

  def display_all_contacts
    Contact.all.each do |contact|
      puts contact.full_name
    end
  end

  def search_by_attribute
    puts "Please enter the first name, last name, or email or the contact you would like to locate:"
    search_element = gets.chomp
    contacts = Contact.where(first_name: search_element) +
               Contact.where(last_name:  search_element) +
               Contact.where(email:      search_element)

    user_input = nil
    contacts.each do |contact|
      until user_input == "y" || user_input == "n"
        puts "Did you mean #{contact.full_name}? y/n\n"
        user_input = gets.chomp
        if user_input == "y"
          return contact
        end
        user_input = nil
      end
    end
    nil
  end

end

at_exit do
  ActiveRecord::Base.connection.close
end
