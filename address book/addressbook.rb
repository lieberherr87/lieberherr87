require_relative "contact"
require "csv"

class AddressBook
  def initialize(csv_file)
    @csv_file = csv_file
    @addresses = []
    load_from_csv
  end

  def add_contact(contact)
    @addresses << contact
    save_to_csv
  end

  def remove_contact(contact_id)
    @addresses.delete_at(contact_id)
    save_to_csv
  end

  def all
    @addresses
  end

  def get_contact(contact_index)
    @addresses[contact_index]
  end

  def save_updates
    save_to_csv
  end


  private
  def load_from_csv
    CSV.foreach(@csv_file) do |row|
      attributes =  {
        :first_name => row[0],
        :last_name => row[1],
        :number => row[2],
        :city => row[3]
        }
      @addresses << Contact.new(attributes)
    end
    return @addresses
  end

  def save_to_csv
    CSV.open(@csv_file, "wb") do |csv|
      @addresses.each do |contact|  #required because otherwise Object is printed w/ object ID
        csv << [contact.first_name, contact.last_name, contact.number, contact.city]
      end
    end
  end
end
