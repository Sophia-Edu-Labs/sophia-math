#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buying Stocks 🛒📈]
// The title "Buying Stocks" with shopping cart and graph emojis is shown on this slide
#v(40pt)
#only("1-")[What is the #text(weight: "bold")[first step] an investor needs to take to buy stocks?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Contact a company directly 📞🏢]
// Answer option a) with telephone and office building emojis is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Set up a brokerage account 🏦💻]
// Answer option b) with bank and computer emojis is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Buy a stock index 📊💸]
// Answer option c) with chart and money emojis is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Visit the stock exchange 🏛️👥]
// Answer option d) with stock exchange building and people emojis is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on buying stocks. What is the first step an investor needs to take to buy stocks?")]
#only("2")[#voiceover("Is it to contact a company directly,")]
#only("3")[#voiceover("or to set up a brokerage account,")]
#only("4")[#voiceover("or to buy a stock index,")]
#only("5")[#voiceover("or to visit the stock exchange?")]
]#questionDef(
questionText: "What is the first step an investor needs to take to buy stocks?", 
answerOptions: ("Contact a company directly", "Set up a brokerage account", "Buy a stock index", "Visit the stock exchange"),
correctAnswerIndex: 1
)