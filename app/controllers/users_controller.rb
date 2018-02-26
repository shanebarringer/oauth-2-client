class UsersController < ApplicationController
    

    def index 
      response = RestClient.get("https://appcenter.intuit.com/connect/oauth2?client_id=Q0EvQA40exlx14n0RgQq1t30AQYCbbXnufyeAAjbwrXDVA5L6n&scope=com.intuit.quickbooks.accounting&redirect_uri=http://localhost:3000/users/autht&response_type=code&state=foo")

      puts response
      redirect_to users_autht_path
    end

    def autht 
      puts "!!!!!!!!!!"
      puts 'success'
      puts '**********'

      render nothing: true, status: 204
    end

end
