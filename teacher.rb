class Teacher
  attr_reader :name
  
  def initialize(name)
  @name =name
  end
  
  def list_classes
    Klass.all.select {|klass| klass.teacher == self }  
  end
  
  def list_students
    Klass.all.map do |klass|
    klass.students
    end.flatten
  end

  def list_students_by_class
    Klass.all.each_with_object ({}) |klass , hash |
    hash[klass.name] ||= klass.students
    end
  end
  
  

end