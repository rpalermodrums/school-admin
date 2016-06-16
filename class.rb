class Klass
    
    attr_accessor :name ,:students,:teacher ,:home_work
    
    @@all=[]
    
    def initialize(name,students,teacher,home_work)
    @name=name
    @students=students
    @teacher= teacher
    @home_work=home_work
    @@all << self
    end
    
end

Klass.new("klass1", [Student.new("ryan"), Student.new("tal")], Teacher.new("Mr. A"), Homework.new("Read Chapter 4"))