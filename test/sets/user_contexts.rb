module Contexts
  module UserContexts
    # create your contexts here...
    def create_users
      @mark_user = FactoryGirl.create(:user, instructor: @mark)
      @alex_user = FactoryGirl.create(:user, instructor: @alex, username: "tank")
    end

    def delete_users
      @mark_user.delete
      @alex_user.delete
    end
  end
end