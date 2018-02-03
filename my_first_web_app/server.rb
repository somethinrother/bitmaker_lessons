require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['Git', 'HTML', 'CSS', 'Ruby', 'Cello', 'Sales']
  @interests = ['video games', 'board games', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favourites' do
  @fav_links = {'Zombo' => 'https://www.zombo.com/', 'Netflix' => 'https://www.netflix.com/ca/', 'Khan Academy' => 'https://www.khanacademy.org/', 'Guitar Pro' => 'https://www.guitar-pro.com/'}
  erb :favourites
end
