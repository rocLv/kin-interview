class SuggestionController < ApplicationController
  def show
    render json: @suggest_username
  end

  def create
    generate_available_username
    render json: @suggest_username
  end

  private

  def generate_available_username
    @suggest_username = generate_suggest
    until dup? @suggest_username
      return @suggest_username
    end
  end

  def generate_suggest
    "#{username}_#{rand(99999)}"
  end

  def dup? suggest_username
    !!User.find_by_username(suggest_username)
  end

  def username
    "#{params[:first_name]}_#{params[:last_name]}".downcase
  end
end
