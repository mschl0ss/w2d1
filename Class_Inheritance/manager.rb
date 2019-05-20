require_relative 'employee.rb'


class Manager < Employee
  attr_reader :employees 

  def initialize
    super
    @employees = []
  end

  def bonus(multiplier)
    if regular employee call our bonus and add it

    
  end
  
  def dfs(emp)
    subordinates = [] 
    return [emp] if !emp.instance_of?(Manager) || emp.employees.empty? 
    emp.employees.each do |child| 
      subordinates << dfs(child)
      # if child.employees.empty?
      #   subordinates << child
      # end
    end
  end

end