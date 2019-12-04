# frozen_string_literal: true

class PeopleController < ApplicationController
  before_action :set_person, only: :destroy

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)
    @people = Person.all
  end

  def destroy
    @person.destroy
    @people = Person.all
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :age)
  end
end
