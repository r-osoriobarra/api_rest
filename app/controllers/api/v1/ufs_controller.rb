module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @user = User.find_by(name: request.headers["xuser"])
                @user.login_count += 1
                @user.save

                @uf = Uf.find_by(date: params[:date])
                render json: @uf
            end
        end
    end
end
