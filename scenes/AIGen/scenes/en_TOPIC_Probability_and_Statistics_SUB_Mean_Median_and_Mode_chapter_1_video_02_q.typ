#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
// The title "Finding the Median" is shown on this slide
#v(40pt)
#only("1-")[How do you find the median of a set of numbers?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Add all the numbers and divide by the count]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Find the middle number in a sorted set]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Multiply all the numbers together]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Subtract the smallest number from the largest]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on finding the median. How do you find the median of a set of numbers?")]
#only("2")[#voiceover("Is it by adding all the numbers and dividing by the count,")]
#only("3")[#voiceover("or by finding the middle number in a sorted set,")]
#only("4")[#voiceover("or by multiplying all the numbers together,")]
#only("5")[#voiceover("or by subtracting the smallest number from the largest?")]
]

//Type: MC 
#questionDef( 
questionText: "How do you find the median of a set of numbers?", 
answerOptions: ("Add all the numbers and divide by the count", "Find the middle number in a sorted set", "Multiply all the numbers together", "Subtract the smallest number from the largest"),
correctAnswerIndex: 1 
)