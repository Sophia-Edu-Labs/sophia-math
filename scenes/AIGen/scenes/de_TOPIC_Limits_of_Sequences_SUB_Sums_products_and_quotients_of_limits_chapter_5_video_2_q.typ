#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen in der realen Welt 🌍]
#v(40pt)
#only("1-")[Welches der folgenden Beispiele ist eine Anwendung von Grenzwerten von Folgen in der realen Welt?]
#v(40pt)
#only("2-")[a) Berechnung von Zinseszinsen 💰]
#v(10pt)
#only("3-")[b) Bevölkerungswachstum 👨‍👩‍👧‍👦]
#v(10pt) 
#only("4-")[c) Sowohl a als auch b]
#v(10pt)
#only("5-")[d) Weder a noch b]

#only("1")[#voiceover("Lass uns dein Verständnis von Anwendungen von Grenzwerten von Folgen in der realen Welt testen. Welches der folgenden Beispiele ist eine solche Anwendung?")]
#only("2")[#voiceover("Ist es die Berechnung von Zinseszinsen,")]  
#only("3")[#voiceover("oder das Bevölkerungswachstum,")]
#only("4")[#voiceover("oder beides,")]
#only("5")[#voiceover("oder keines von beiden?")]
]#questionDef(
questionText: "Welches der folgenden Beispiele ist eine Anwendung von Grenzwerten von Folgen in der realen Welt?",
answerOptions: ("Berechnung von Zinseszinsen", "Bevölkerungswachstum", "Sowohl a als auch b", "Weder a noch b"),
correctAnswerIndex: 2
)