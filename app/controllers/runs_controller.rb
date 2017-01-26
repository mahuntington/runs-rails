class RunsController < ApplicationController
	def all
		all_runs = Run.all
		nested_data = all_runs.map do |run|
			{
				id: run.id,
				distance: run.distance,
				time: run.time,
				date: run.date,
				user_id: run.user_id,
				created_at: run.created_at,
				updated_at: run.updated_at,
				user: run.user
			}
		end
		render json: nested_data
	end
	def one
		render json: Run.find(params[:id]).to_json(include: :user)
	end

	def index
		all_runs = Run.where(user_id: params[:user_id])
		nested_data = all_runs.map do |run|
			{
				id: run.id,
				distance: run.distance,
				time: run.time,
				date: run.date,
				user_id: run.user_id,
				created_at: run.created_at,
				updated_at: run.updated_at,
				user: run.user
			}
		end
		render json: nested_data
	end

	def show
		the_run = Run.where(user_id: params[:user_id], id: params[:id]).first
		render json: { run: the_run, user: the_run.user, status: 200 }
	end
end
