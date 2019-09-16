class Site::WelcomeController < SiteController
  def index
    # @questions = Question.all. Da forma que está resolve o problema do N+1! 
    @questions = Question.last_questions(params[:page]) 
  end
end
