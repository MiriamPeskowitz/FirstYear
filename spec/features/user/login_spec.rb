require 'rails_helper'

Rspec.feature "Login", :type => :feature do
	let(:user) {create(:user)}

	