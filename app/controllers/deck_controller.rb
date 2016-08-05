get '/decks' do
  @deck = Deck.all
  erb :'/decks/show'
end

get '/decks/:id' do

end

post '/decks/create' do
  @deck = Deck.new(name: params[:name])
  @deck.save
  erb :'/cards/new'
end

get '/decks/:id/play' do
  @deck = Deck.find(id: params[:id])
  @cards = @decks.cards.shuffle!
  erb :'/decks/play_deck'
end
