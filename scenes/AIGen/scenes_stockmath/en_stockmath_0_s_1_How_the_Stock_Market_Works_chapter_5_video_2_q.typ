#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Transactions 🤝]
#v(40pt)
#only("1-")[Who facilitates transactions between buyers and sellers in the stock market?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Government 🏛️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Companies 🏢]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Brokers 👨‍💼]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Banks 🏦]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge about stock market transactions. Who facilitates transactions between buyers and sellers in the stock market?")]
#only("2")[#voiceover("Is it the government,")]
#only("3")[#voiceover("or is it the companies themselves,")]
#only("4")[#voiceover("or maybe it's brokers,")]
#only("5")[#voiceover("or could it be banks?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Who facilitates transactions between buyers and sellers in the stock market?",
answerOptions: ("Government", "Companies", "Brokers", "Banks"),
correctAnswerIndex: 2,
)