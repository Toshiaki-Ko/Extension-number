# -*- coding: utf-8 -*-

require 'rails_helper'

RSpec.describe MembersController, :type => :controller do
  describe "POST create" do
  	it "creates a new Member" do
  		expect {
  			post :create, {:name => "田中", :pronunciation => "たなか", :phone_number => 1234, :department => "akb"}
  			# post :create, {:Member => ""}
  		}.to change(Member, :count).by(1)
  	end
  end
end
