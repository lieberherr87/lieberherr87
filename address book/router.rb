class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to the Address Book!"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.print_contacts
    when 2 then @controller.add_contact
    when 3 then @controller.remove_contact
    when 4 then stop
    when 5 then @controller.edit_contact
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all contacts"
    puts "2 - Create a new contact"
    puts "3 - Destroy a contact"
    puts "4 - Stop and exit the program"
    puts "5 - Edit a contact"
  end
end
