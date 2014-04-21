module Contexts
  module RegistrationContexts
    # create your contexts here...
    def create_paid_registrations
      @max_tactics    = FactoryGirl.create(:registration, camp: @camp1, student: @max, payment_status: "full")
      @peter_endgames = FactoryGirl.create(:registration, camp: @camp4, student: @peter, payment_status: "full")
      @peter_tactics  = FactoryGirl.create(:registration, camp: @camp1, student: @peter, payment_status: "full")
    end

    def delete_paid_registrations
      @max_tactics.delete
      @peter_endgames.delete
      @peter_tactics.delete
    end

    def create_deposit_registrations
      @zach_endgames  = FactoryGirl.create(:registration, camp: @camp4, student: @zach)
      @kelsey_endgames = FactoryGirl.create(:registration, camp: @camp4, student: @kelsey)
    end

    def delete_deposit_registrations
      @zach_endgames.delete
      @kelsey_endgames.delete
    end
  end
end