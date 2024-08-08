class TasksController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def delete
  end

  def schedule
    @start_time = '08:00'
    @end_time = '18:00'
    @time_slot_duration = 1.hour
    @time_slots = generate_time_slots(@start_time, @end_time, @time_slot_duration)
  end

  private

  def generate_time_slots(start_time, end_time, duration)
    time_slots = []
    start_time = Time.parse(start_time)
    end_time = Time.parse(end_time)
    while start_time < end_time
      time_slots << start_time
      start_time += duration
    end

    time_slots
  end
end
