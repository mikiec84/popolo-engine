require 'spec_helper'

describe Popolo::PeopleController do
  before :each do
    @routes = Popolo::Engine.routes
    @person = FactoryGirl.create :person
  end

  describe 'GET index' do
    it 'assigns all people as @people' do
      get :index
      assigns(:people).to_a.should == [@person]
    end
  end

  describe 'GET show' do
    it 'assigns the requested person as @person' do
      get :show, id: @person.id.to_s
      assigns(:person).should == @person
    end

    it 'gets the requested person by slug' do
      get :show, id: @person.slug
      assigns(:person).should == @person
    end
  end
end
