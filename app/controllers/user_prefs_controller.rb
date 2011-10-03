class UserPrefsController < ApplicationController

  before_filter :authenticate_user!

  # GET /user_prefs
  # GET /user_prefs.xml
  def index
    @user_prefs = UserPref.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_prefs }
    end
  end

  # GET /user_prefs/1
  # GET /user_prefs/1.xml
  def show
    @user_pref = UserPref.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_pref }
    end
  end

  # GET /user_prefs/new
  # GET /user_prefs/new.xml
  def new
    @user_pref = UserPref.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_pref }
    end
  end

  # GET /user_prefs/1/edit
  def edit
    @user_pref = UserPref.find(params[:id])
  end

  # POST /user_prefs
  # POST /user_prefs.xml
  def create
    @user_pref = UserPref.new(params[:user_pref])

    respond_to do |format|
      if @user_pref.save
        format.html { redirect_to(@user_pref, :notice => 'User pref was successfully created.') }
        format.xml  { render :xml => @user_pref, :status => :created, :location => @user_pref }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_pref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_prefs/1
  # PUT /user_prefs/1.xml
  def update
    @user_pref = UserPref.find(params[:id])

    respond_to do |format|
      if @user_pref.update_attributes(params[:user_pref])
        format.html { redirect_to(@user_pref, :notice => 'User pref was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_pref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_prefs/1
  # DELETE /user_prefs/1.xml
  def destroy
    @user_pref = UserPref.find(params[:id])
    @user_pref.destroy

    respond_to do |format|
      format.html { redirect_to(user_prefs_url) }
      format.xml  { head :ok }
    end
  end
end
