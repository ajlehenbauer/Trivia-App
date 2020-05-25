module UsersHelper

    def index_by_rep
        User.all.each do |u|
            if u.reputation.nil?
                u.update_attribute(:reputation,0)
            end
        end
        @users = User.order(:reputation).reverse_order
    end

end
