class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def brandi
  end

  def brian
  end

  def guy
  end

  def ginger
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params[:person]
    end
end
