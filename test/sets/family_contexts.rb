module Contexts
  module FamilyContexts
    # create your contexts here...
    def create_families
      @grubermans = FactoryGirl.create(:family)
      @skirpans   = FactoryGirl.create(:family, family_name: "Skirpan", parent_first_name: "Ellen")
      @regans     = FactoryGirl.create(:family, family_name: "Regan", parent_first_name: "Patrick", phone: "412-369-4314")

    end

    def delete_families
      @grubermans.delete
      @regans.delete
      @skirpans.delete
    end

    def create_inactive_families
      @ellis = FactoryGirl.create(:family, family_name: "Ellis", parent_first_name: "Carolyn", active: false)
    end

    def delete_inactive_families
      @ellis.delete
    end
  end
end