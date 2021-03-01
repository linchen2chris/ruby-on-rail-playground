class Employee
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observer = []
  end
  def update_salary(salary)
    @salary = salary
    notify
  end

  def notify()
    @observer.each { |obs| obs.update(self) }
    'done'
  end
end
