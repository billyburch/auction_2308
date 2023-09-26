class Attendee
  attr_reader :name, :budget

  def initialize(att_details)
    @name = att_details[:name]
    @budget = att_details[:budget]
  end

  def budget
    @budget.delete("$").to_i
  end
end