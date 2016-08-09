require_relative "contact"
require_relative "view"

class Controller
  def initialize(addressbook)
    @addressbook = addressbook
    @view = View.new
  end

  def print_contacts
    @view.print_contacts(@addressbook.all)
  end

  def add_contact
    first_name = @view.get_first_name
    last_name = @view.get_last_name
    number = @view.get_number
    city = @view.get_city
    @addressbook.add_contact(Contact.new(attributes = {
      :first_name => first_name,
      :last_name => last_name,
      :number => number,
      :city => city
      }
      ))
  end

  def remove_contact
    contact_id = @view.get_contact_id_delete
    @addressbook.remove_contact(contact_id)
  end

  def edit_contact
    @view.print_contacts(@addressbook.all)
    contact_index = @view.get_contact_index
    key_to_edit = @view.get_field_to_edit
    new_value = @view.get_new_value

    case key_to_edit
      when 1 then @addressbook.get_contact(contact_index).update_first(new_value)
      when 2 then @addressbook.get_contact(contact_index).update_last(new_value)
      when 3 then @addressbook.get_contact(contact_index).update_number(new_value)
      when 4 then @addressbook.get_contact(contact_index).update_city(new_value)
    end
    @view.print_contacts(@addressbook.all)
    @addressbook.save_updates
  end
end


