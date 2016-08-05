user_data = [{name: "Cauliflower King", email: "cauliflower@king.gov", password: "helpimtrappedhere"},
  {name: "Captain Mango", email: "captainmango@mango.com", password: "123456"},
  {name: "Rubiks Richie", email: "richie@rubiks.cube", password: "downleftupright"},
  {name: "Crusher", email: "ihatecockraoches@apartment.help", password: "#saveelizabeth"}]

User.create!(user_data)

deck_data = [{name: "Anti-Jokes"},
  {name: "Ascii Artists"}]

Deck.create!(deck_data)

antijokes = Deck.find_by(name: "Anti-Jokes")
Card.create({question: "Why did Susie fall off the swing?", answer: "Because she had no arms or legs", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "Knock, knock. Who's there?", answer: "Not Susie", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What's red and bad for your teeth?", answer: "A brick", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "How do you make a plumber sad?", answer: "You Kill his family", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What happens when you throw a green ball into the Red Sea?", answer: "It gets wet", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "How many babies does it take to paint a wall red?", answer: "depends on how much red paint you have", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What is red and smells like blue paint?", answer: "Red paint", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What's sad about 4 people in a Cadillac going over a cliff?", answer: "They were my friends", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "Why can't Helen Keller drive?", answer: "Because she is dead", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What did Buzz say to Woody?", answer: "A lot. There were 3 movies", guessed_correctly: false, deck_id: antijokes.id, guessed: false })
Card.create({question: "What's brown and sticky?", answer: "A stick", guessed_correctly: false, deck_id: antijokes.id, guessed: false })

ascii = Deck.find_by(name: "Ascii Artists")
Card.create({question: "Who loves ascii art the most?", answer: "Cauliflower King", guessed_correctly: false, deck_id: ascii.id, guessed: false  })
Card.create({question: "Who is the greatest Ascii artist who ever lived?", answer: "Cauliflower King", guessed_correctly: false, deck_id: ascii.id, guessed: false  })
Card.create({question: "Who is pretty bad at Ascii art?", answer: "Not Cauliflower King", guessed_correctly: false, deck_id: ascii.id, guessed: false  })
Card.create({question: "Who is your favorite Ascii artist?", answer: "Cauliflower King", guessed_correctly: false, deck_id: ascii.id, guessed: false  })

UserDeck.create({deck_id: 1, user_id: 3, round: 1, first_try_correct: 3, total_guesses: 3})
UserDeck.create({deck_id: 2, user_id: 1, round: 1, first_try_correct: 1, total_guesses: 1})
UserDeck.create({deck_id: 1, user_id: 4, round: 1, first_try_correct: 0, total_guesses: 6})
UserDeck.create({deck_id: 1, user_id: 2, round: 1, first_try_correct: 2, total_guesses: 4})
