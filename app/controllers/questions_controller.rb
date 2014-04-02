class QuestionsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    5.times { @question.answers.build }
  end

  def create
    @question = Question.new(params[:question].permit(:question, :exam_id, :subject_id, :picture, answers_attributes: [:alternative, :correct]))

    flash[:notice] = 'Pergunta criada com sucesso.' if @question.save
    respond_with(@question)
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    flash[:notice] = "Pergunda removida com sucesso."
    respond_with(@question)
  end

  private
  def question_params
    params.permit(:question, :exam_id, :subject_id, :picture, answers_attributes: [:alternative, :correct])
  end
end
