#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Time Value of Money 💰]
#v(40pt)
#only("1-")[Why is money today worth more than the same amount in the future? 🤔]
#v(40pt)
#only("2-")[a) Inflation 📈]
#v(10pt)
#only("3-")[b) Interest 🏦]
#v(10pt)
#only("4-")[c) Investment opportunities 📊]
#v(10pt)
#only("5-")[d) All of the above ✅]
#only("1")[#voiceover("Let's test your understanding of the time value of money. Why is money today worth more than the same amount in the future?")]
#only("2")[#voiceover("Is it because of inflation,")]
#only("3")[#voiceover("or because of interest,")]
#only("4")[#voiceover("or due to investment opportunities,")]
#only("5")[#voiceover("or could it be all of the above?")]
]#questionDef(
questionText: "Why is money today worth more than the same amount in the future?",
answerOptions: ("Inflation", "Interest", "Investment opportunities", "All of the above"),
correctAnswerIndex: 3
)