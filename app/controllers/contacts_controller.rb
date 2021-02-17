class ContactsController < ApplicationController
    def create 
        Contact.create(:user_id, :contact_id)
    end
end
