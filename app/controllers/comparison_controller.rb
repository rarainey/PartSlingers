class ComparisonController < ApplicationController

    def get_selections
        @gpus = Item.where(category: 'GPU')
        render :get_selections
    end

    def display_comparison

        if (params[:gpu1].present? && params[:gpu2].present?) && (params[:gpu1] != params[:gpu2])
            @gpu1 = Item.find(params[:gpu1])
            @gpu2 = Item.find(params[:gpu2])

            if @gpu1.gpu_rank < @gpu2.gpu_rank
                @winner_gpu, @loser_gpu = @gpu1, @gpu2
            else
                @winner_gpu, @loser_gpu = @gpu2, @gpu1
            end

            render :display_comparison
        else
            flash[:error] = "You must select two different GPU's"
            redirect_to gpu_selections_path(gpu1: params[:gpu1], gpu2: params[:gpu2])
        end

    end
end
