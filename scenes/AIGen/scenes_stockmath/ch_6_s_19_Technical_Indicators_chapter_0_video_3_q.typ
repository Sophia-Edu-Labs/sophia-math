#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators 📈]
#v(40pt)
#only("1-")[Which element is #text(weight: "bold")[not] directly used in calculating most technical indicators?]
#v(40pt)
#only("2-")[a) Stock prices 💰]
#v(10pt)
#only("3-")[b) Trade volume 📊]
#v(10pt)
#only("4-")[c) Company earnings 💸]
#v(10pt)
#only("5-")[d) Time periods ⏰]

#only("1")[#voiceover("Let's test your knowledge on technical indicators. Which of the following elements is not directly used in calculating most technical indicators?")]
#only("2")[#voiceover("Is it stock prices,")]
#only("3")[#voiceover("or trade volume,")]
#only("4")[#voiceover("or could it be company earnings,")]
#only("5")[#voiceover("or lastly, time periods?")]
]#questionDef(
questionText: "Which element is not directly used in calculating most technical indicators?", 
answerOptions: ("Stock prices", "Trade volume", "Company earnings", "Time periods"),
correctAnswerIndex: 2
)