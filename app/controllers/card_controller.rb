post '/cards/:id/create' do
  @deck = Deck.find_by(id: params[:id])
  attributes = params[:card].merge(deck_id: params[:id])
  card = Card.new(attributes)

  if @deck
    if card.save
      @deck
      erb :'/cards/new'
    else
      @errors = card.errors.full_messages
      erb :'/cards/new'
    end
  else
    @deck
    erb :'/cards/new'
  end
end
