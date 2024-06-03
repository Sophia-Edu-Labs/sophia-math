#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance and Market Efficiency]
#v(40pt)
#only("1-")[How does Behavioral Finance challenge market efficiency?]
#v(40pt)
#only("2-")[a) By assuming rational behavior]
#v(10pt)
#only("3-")[b) By showing that markets are influenced by irrational behavior]
#v(10pt)
#only("4-")[c) By predicting stock prices]
#v(10pt)
#only("5-")[d) By calculating financial ratios]
#only("1")[#voiceover("Let's test your knowledge on how Behavioral Finance challenges market efficiency.")]
#only("2")[#voiceover("Does it challenge market efficiency by assuming rational behavior,")]
#only("3")[#voiceover("or by showing that markets are influenced by irrational behavior,")]
#only("4")[#voiceover("or by predicting stock prices,")]
#only("5")[#voiceover("or by calculating financial ratios?")]
]#questionDef(
questionText: "How does Behavioral Finance challenge market efficiency?",
answerOptions: ("By assuming rational behavior", "By showing that markets are influenced by irrational behavior", "By predicting stock prices", "By calculating financial ratios"),
correctAnswerIndex: 1,
)