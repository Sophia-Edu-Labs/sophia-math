#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency]
#v(40pt)
#only("1-")[- Exercise: What is the relative frequency of drawing a 4 or a 6?]
#v(20pt)
#only("2-")[- a) 0.25]
#only("3-")[- b) 0.3]
#only("4-")[- c) 0.35]
#only("5-")[- d) 0.4]
#only("1")[#voiceover("Great job on answering the question! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("Option a) 0.25 is incorrect. This would mean that 5 out of 20 cards are either a 4 or a 6, but that's not the case.")]
#only("3")[#voiceover("Option b) 0.3 is correct. To find the relative frequency, we add the number of 4s and 6s and divide by the total number of cards. Here, we have 3 fours and 3 sixes, making a total of 6 cards. So, 6 divided by 20 is 0.3.")]
#only("4")[#voiceover("Option c) 0.35 is incorrect. This would mean that 7 out of 20 cards are either a 4 or a 6, but we only have 6 such cards.")]
#only("5")[#voiceover("Option d) 0.4 is also incorrect. This would mean that 8 out of 20 cards are either a 4 or a 6, but again, we only have 6 such cards.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Explanation]
#v(40pt)
#only("1-")[- Total number of cards = 20]
#v(20pt)
#only("2-")[- Number of 4s = 3]
#v(20pt)
#only("3-")[- Number of 6s = 3]
#v(20pt)
#only("4-")[- Total number of 4s and 6s = 3 + 3 = 6]
#v(20pt)
#only("5-")[- Relative frequency = 6/20 = 0.3]
#only("1")[#voiceover("Let's break down the solution. First, we know the total number of cards is 20.")]
#only("2")[#voiceover("Next, we count the number of 4s, which is 3.")]
#only("3")[#voiceover("Similarly, we count the number of 6s, which is also 3.")]
#only("4")[#voiceover("Adding these together, we get a total of 6 cards that are either a 4 or a 6.")]
#only("5")[#voiceover("Finally, we calculate the relative frequency by dividing the total number of 4s and 6s by the total number of cards. So, 6 divided by 20 equals 0.3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency Formula]
#v(40pt)
#only("1-")[- Relative frequency = (Number of desired outcomes) / (Total number of outcomes)]
#v(20pt)
#only("2-")[- In our case: (3 + 3) / 20 = 0.3]
#only("1")[#voiceover("The formula for relative frequency is the number of desired outcomes divided by the total number of outcomes.")]
#only("2")[#voiceover("In our specific example, the number of desired outcomes is the sum of 4s and 6s, which is 3 plus 3, and the total number of outcomes is 20. So, 6 divided by 20 equals 0.3.")]
]