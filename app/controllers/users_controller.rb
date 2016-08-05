get '/users/new' do
  erb :'users/register'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/register'
  end
end

get '/users/logout' do
  session.clear
  redirect '/'
end

get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @email = params[:email]
    @errors = ["Invalid e-mail/password combination"]
    erb :'users/login'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @user_decks = UserDeck.where(user_id: @user.id)
  @to_print = {}
  @user_decks.each do |ud|
    cards_number = Deck.find(ud.deck_id).cards.length
    if @to_print[ud.deck_id]
      @to_print[ud.deck_id] << [ud.round, ud.created_at, cards_number, ud.first_try_correct, ud.total_guesses]
    else
      @to_print[ud.deck_id] = []
      @to_print[ud.deck_id] << [ud.round, ud.created_at, cards_number, ud.first_try_correct, ud.total_guesses]
    end
  end
  erb :'users/profile'
end
