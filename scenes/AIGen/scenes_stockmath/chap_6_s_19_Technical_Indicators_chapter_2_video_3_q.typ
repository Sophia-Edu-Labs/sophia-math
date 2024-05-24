#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Analysis Scenario]
// The title "Technical Analysis Scenario" is shown on this slide
#v(40pt)
#only("1-")[A trader observes two technical indicators:]
// The scenario introduction is shown from slide 1 onward
#v(20pt)
#only("2-")[1. A Moving Average crossover 📈]
// The first observation is shown from slide 2 onward
#v(10pt)
#only("3-")[2. An RSI reading below 30 📉]
// The second observation is shown from slide 3 onward
#v(40pt)
#only("4-")[What is the most likely interpretation?]
// The question is shown from slide 4 onward
#v(40pt)
#only("5-")[a) Buy signal 💰]
// Answer option a) is shown from slide 5 onward
#v(10pt)
#only("6-")[b) Sell signal 💸]
// Answer option b) is shown from slide 6 onward
#v(10pt)
#only("7-")[c) Hold position 🤝]
// Answer option c) is shown from slide 7 onward
#v(10pt)
#only("8-")[d) Price drop 📉]
// Answer option d) is shown from slide 8 onward
#only("1")[#voiceover("Consider the following technical analysis scenario:")]
#only("2")[#voiceover("A trader observes a Moving Average crossover...")]
#only("3")[#voiceover("...and an RSI reading below 30.")]
#only("4")[#voiceover("Based on these observations, what is the most likely interpretation?")]
#only("5")[#voiceover("Is it a potential buy signal,")]
#only("6")[#voiceover("or a potential sell signal?")]
#only("7")[#voiceover("Could it indicate a hold position,")]
#only("8")[#voiceover("or is it suggestive of a price drop?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "A trader observes a Moving Average crossover and an RSI reading below 30. This most likely indicates a potential:",
answerOptions: ("Buy signal", "Sell signal", "Hold position", "Price drop"),
correctAnswerIndex: 0,  
)