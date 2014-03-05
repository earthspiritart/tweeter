namespace :tweets do

desc "cleans out tweets with no users"
task destroy_tweets: :environment do

      Tweet.where(:user_id => nil).destroy_all
    end 
end

# namespace :users do

#   task :verify_profile => :environment do

#     users = User.all
#     users