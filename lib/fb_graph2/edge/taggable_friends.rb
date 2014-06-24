module FbGraph2
  class Edge
    module TaggableFriends
      def taggable_friends(params = {})
        users = self.edge :taggable_friends, params
        users.collect do |user|
          User.new(user[:id], user).authenticate self.access_token
        end
      end
    end
  end
end