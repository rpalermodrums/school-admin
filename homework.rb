class Homework
  attr_accessor :title, :assignments, :submitted
  
  def initialize(title)
    @title = title
    @assignments = []
    @submitted = init_submit
  end
  
  def  find_my_class
      Klass.all.find do |klass|
        klass.home_work == self
      end
  end
  
  def init_submit
    find_my_class.students.each_with_object ({}) do |student ,hash|
      hash[student] ||= false
    end
  end
  
  
end