class Contact

  attr_reader :first_name, :last_name, :number, :city

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @number = attributes[:number]
    @city = attributes[:city]
  end

  def update_first(first_name)
    @first_name = first_name
  end

  def update_last(last_name)
    @last_name = last_name
  end

  def update_number(number)
    @number = number
  end

  def update_city(city)
    @city = city
  end

end
