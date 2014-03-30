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
    @question = Question.new(params[:question].permit(:question, :exam_id, :subject_id, answers_attributes: [:alternative]))

    flash[:notice] = 'Pergunta criada com sucesso.' if @question.save
    respond_with(@question)
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.permit(:question, :exam_id, :subject_id, answers_attributes: [:alternative])
  end
end
