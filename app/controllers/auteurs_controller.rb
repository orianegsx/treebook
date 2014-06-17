class AuteursController < ApplicationController
 
  
  def index
    @auteurs = Auteur.all
    respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @auteurs }
       
     end
   end
  
  
   def new
     @auteur = Auteur.new
   end  
  
   def create
     @auteur = Auteur.new(params[:id])

     respond_to do |format|
       if @auteur.save
         format.html { redirect_to @auteur, notice: 'Post was successfully created.' }
         format.json { render :index }
       else
         format.html { render :new }
         format.json { render json: @auteur.errors, status: :unprocessable_entity }
       end
     end
   end
   
   
   def destroy
     @auteur = Auteur.find(params[:id])
     @auteur.destroy
 
     respond_to do |format|
       format.html { redirect_to :auteur}
       format.xml  { head :ok }
     end
   end
   
   private
     # Use callbacks to share common setup or constraints between actions.

end
