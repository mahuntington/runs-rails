class UsersController < ApplicationController
	def index
		all_users = User.all
		nested_date = all_users.map do |user|
			{
				id: user.id,
				name: user.name,
				age: user.age,
				created_at: user.created_at,
				updated_at: user.updated_at,
				runs: user.runs.sort_by { |run| run.date }
			}
		end
		render json: nested_date
	end
	def show
		# render json: { user: User.find(params[:id]).to_json(include: :runs), status: 200 }
		render json: User.find(params[:id]).to_json(include: :runs)
	end
end
