class SchedulesController < ApplicationController
  # GET /schedules
  # GET /schedules.json
  before_filter :signed_in_user, only: [:index,:edit,:destroy,:update]
  
  
  def index
    if current_user.admin?
      @schedules=Schedule.all
    else 
      @schedules = current_user.schedules
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schedules }
    end
  end


  # GET /schedules/1
  # GET /scshedules/1.json
  def show
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schedule }
    end
  end

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @schedule = Schedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schedule }
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(params[:schedule])

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render json: @schedule, status: :created, location: @schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json



  def update
    @schedule = Schedule.find(params[:id])
    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url }
      format.json { head :no_content }
    end
  end

  def approved

    @schedule =Schedule.find(params[:id])
    if params[:statue]=="approved"
      temp="approved";
    else
      temp="draffing";
    end
    @schedule.statue=temp;
    @schedule.save
    redirect_to schedules_path
    
  end

  private

    def  admin_user
        redirect_to(root_path) unless  current_user.admin?
    end
end
