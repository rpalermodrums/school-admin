class Student
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def list_classes
    Klass.all.select do |klass|
      klass.students.include?(self)
    end
  end
  
  def list_teachers
    list_classes.map do |klass|
      klass.teacher
    end.uniq
  end
  
  def list_teachers_by_class
    list_classes.each_with_object({}) do |klass, teachers|
      teachers[klass.teacher.name] ||= klass.name
    end
  end
  
  def list_homework
    list_classes.map do |klass|
      klass.homework
    end
  end
  
  def list_homework_by_class
    list_classes.each_with_object({}) do |klass, homework|
      homework[klass.name] ||= klass.homework
    end
  end
  
  # def list_teachers_by_class_object
  #   list_classes.each_with_object({}) do |klass, teachers|
  #     teachers[klass.teacher.name] ||= klass
  #   end
  # end
  
  
end