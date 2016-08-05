user_data = [{name: "Cauliflower King", email: "cauliflower@king.gov", password: "helpimtrappedhere"},
  {name: "Captain Mango", email: "captainmango@mango.com", password: "123456"},
  {name: "Rubiks Richie", email: "richie@rubiks.cube", password: "downleftupright"},
  {name: "Crusher", email: "ihatecockraoches@apartment.help", password: "#saveelizabeth"}]

User.create!(user_data)

deck_data = [{name: "Anti-Jokes"},
  {name: "Ascii Artists"}]

Deck.create!(deck_data)

antijokes = Deck.find_by(name: "Anti-Jokes")
Card.create({question: "Why did Susie fall off the swing?", answer: "Because she had no arms or legs.", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "Knock, knock. Who's there?", answer: "Not Susie.", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What's red and bad for your teeth?", answer: "A brick.", guessed_correctly: false, deck_id: antijokes.id, guessed: false })

ascii = Deck.find_by(name: "Ascii Artists")
Card.create({question: "Who loves ascii art the most?", answer: "Cauliflower King.", guessed_correctly: false, deck_id: ascii.id, guessed: false  })

UserDeck.create({deck_id: 1, user_id: 3, round: 1, first_try_correct: 3, total_guesses: 3})
UserDeck.create({deck_id: 2, user_id: 1, round: 1, first_try_correct: 1, total_guesses: 1})
UserDeck.create({deck_id: 1, user_id: 4, round: 1, first_try_correct: 0, total_guesses: 6})
UserDeck.create({deck_id: 1, user_id: 2, round: 1, first_try_correct: 2, total_guesses: 4})
