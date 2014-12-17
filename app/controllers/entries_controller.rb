class EntriesController < ApplicationController
	def index
		@entries = Entry.all
		@sums = { }
		cols = Entry.column_names - [ 'flown', 'plane_id', 'from', 'to', 'remarks', 'created_at', 'updated_at' ]
		cols.each do |name|
			@sums[name] = Entry.sum(name)
		end
	end

	def edit
		@entry = Entry.find(params[:id])
	end

	def create
		@entry = Entry.new(entry_params)

		if @entry.save
			redirect_to entries_url, notice: 'Entry was successfully created.'
		else
			render action: "new"
		end
	end

	def update
		@entry = Entry.find(params[:id])

		if @entry.update_attributes(entry_params)
			redirect_to entries_url, notice: 'Entry was successfully updated.'
		else
			render action: "edit"
		end
	end

	def destroy
		@entry = Entry.find(params[:id])
		@entry.destroy

		redirect_to entries_url, notice: 'Entry was deleted.'
	end

	private
	def entry_params
		params.require(:entry).permit(:flown, :plane_id, :from, :to, :remarks, :takeoffs, :landings, :sel, :mel, :night, :actual_instrument, :simulated_instrument, :instrument_approaches, :cross_country, :solo, :dual_received, :pic, :total_flight)
	end
end
