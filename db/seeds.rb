# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "ffaker"



  30.times do |i|
    User.create(
      {
      name: Faker::Name.name,
      user_name:Faker::Name.name,
      age: rand(5..99).to_s,
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password',
      }
      )
  end
    
    @users = User.all
  30.times do |i|
    user =  @users.sample
    tweet = user.tweets.build(content: Faker::BaconIpsum.words(8).join(', '))
    tweet.save
  end

  30.times do |i|
    tweet = Tweet.create(content: FFaker::BaconIpsum.words(9).join(', '))
  end


