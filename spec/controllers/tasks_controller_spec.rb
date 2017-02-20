require 'rails_helper'

describe ListsController do
  context "methods in tasks" do
    it "will get all lists" do
      get :index
      expect(assigns(:lists)).to eq([])
    end

    it "renders the index" do
      get :index
      expect(response).to render_template("index")
    end

    it "show a specific list" do
      list = List.create(:name => 'Kevin')
      get :show, :id => list.id.to_s
      expect(assigns(:list)).to eq(list)
    end

    it "will template a new list" do
      list = List.new
      get :new
      expect(assigns(:list)) ==(nil)
    end

    # it "will create and save a list" do
    #   list_params = List.new(:name => 'Kevin')
    #   post :create, list_params.to_param
    #   expect(assigns(:list)).to eq('Kevin')
    # end
  end
end
