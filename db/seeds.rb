# User.destroy_all
# Note.destroy_all

# users_list = [
#     "John"
# ]

# users_list.each do |user, index|
#     User.create( 
#         username: user, 
#         password: 'password')
# end

5.times do 
    Note.create(
        user_id: 1,
        title: Faker::Job.title,
        note: Faker::TvShows::SouthPark.quote,
        tags: "Cooking, Eating, Sharing",
        done: false
    )
end

5.times do 
    Note.create(
        user_id: 2,
        title: Faker::Job.title,
        note: Faker::TvShows::SouthPark.quote,
        tags: "Cooking, Eating, Sharing",
        done: false
    )
end

5.times do 
    Note.create(
        user_id: 3,
        title: Faker::Job.title,
        note: Faker::TvShows::SouthPark.quote,
        tags: "Cooking, Eating, Sharing",
        done: false
        )
end
