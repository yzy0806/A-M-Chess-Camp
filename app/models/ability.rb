class Ability
  include CanCan::Ability
  
  def initialize(user)
    # set user to new User if not logged in
    user ||= User.new # i.e., a guest user
    
    # set authorizations for different user roles
    if user.role? :admin
      # they get to do it all
      can :manage, :all
  
    elsif user.role? :instructor
      # can see a list of all users
      can :read, Camp
      can :read, Instructor
      can :read, Curriculum
      can :read, Location
      # they can update their own profile
      can :update, Instructor do |i|  
        i.id == user.instructor_id
      end

      can :update, User do |u|  
        u.id == user.id
      end

      can :show, Student do |stu|
        my_students = user.instructor.camps.map{|c| c.students.map(&:id)}.flatten
        my_students.include? stu.id
      end

    else
      # guests can only read domains covered (plus home pages)
      can :read, Camp
      can :read, Instructor
      can :read, Curriculum
      can :read, Location
    end
  end
end