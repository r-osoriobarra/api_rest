module Api
    module V1
        class UsersController < V1Controller
            def by_name
                @user = User.find_by(name: params[:name])
                render json: @user
            end
        end
    end
end
