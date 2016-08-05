get '/decks' do
  @deck = Deck.all
  erb :'/decks/show'
end

post '/decks/create' do
  @deck = Deck.new(name: params[:name])
  @deck.save
  erb :'/cards/new'
end

get '/decks/start/:id' do
  @deck = Deck.find(params[:id])
  round_number = UserDeck.where(user_id: current_user, deck_id: @deck.id).length + 1
  @user_deck = UserDeck.create({user_id: current_user, deck_id: @deck.id, round: round_number, first_try_correct: 0, total_guesses: 0})
  redirect "/decks/#{@user_deck.id}"
end

get '/decks/:user_deck_id' do
  @user_deck = UserDeck.find(params[:user_deck_id])
  @deck = Deck.find(@user_deck.deck_id)
  @cards = @deck.cards.where(guessed_correctly: false).shuffle
  if @cards.length > 0
    erb :'/decks/play_deck'
  else
    cards = @deck.cards
    cards.each do |c|
      c.guessed = false
      c.guessed_correctly = false
      c.save
    end
    redirect "/users/#{@user_deck.user_id}"
  end
end

post '/decks/check/:user_deck_id' do
    @user_deck = UserDeck.find(params[:user_deck_id])
    @user_deck.total_guesses += 1
    @card = Card.find(params[:card_id])
    if params[:guess].chomp.downcase != @card.answer.downcase
      @card.guessed = true
      @card.save
      @user_deck.save
      erb :'decks/incorrect'
    else
      @user_deck.first_try_correct += 1 unless @card.guessed
      @card.guessed = true
      @card.guessed_correctly = true
      @card.save
      @user_deck.save
      erb :'decks/correct'
    end
end
