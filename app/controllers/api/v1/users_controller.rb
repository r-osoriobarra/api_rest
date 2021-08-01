module Api
    module V1
        class UfsController < V1Controller
            def by_name
                @user = Uf.find_by(f_name: params[:f_name],
                                    l_name: params[:l_name])
                render json: @user
            end
        end
    end
end
