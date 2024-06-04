#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Änderung des Wasserdrucks]
#v(40pt)
#only("1-")[Wenn der Wasserspiegel im Reservoir um 2 m sinkt, wie ändert sich der Druck im vierten Stock? 🤔]
#v(40pt)
#only("2-")[a) Erhöht sich um 0,2 bar ⬆]
#v(10pt)
#only("3-")[b) Verringert sich um 0,2 bar ⬇]
#v(10pt)
#only("4-")[c) Bleibt gleich 🟰]
#v(10pt)
#only("5-")[d) Erhöht sich um 2 bar ⬆⬆]
#only("1")[#voiceover("Betrachten wir ein Szenario. Wenn der Wasserspiegel im Reservoir um 2 Meter sinkt, wie ändert sich der Druck im vierten Stock?")]
#only("2")[#voiceover("Erhöht er sich um 0,2 bar,")]  
#only("3")[#voiceover("oder verringert er sich um 0,2 bar,")]
#only("4")[#voiceover("oder bleibt er gleich,")]
#only("5")[#voiceover("oder erhöht er sich um 2 bar?")]
]#questionDef(
questionText: "Wenn der Wasserspiegel im Reservoir um $2$ m sinkt, wie ändert sich der Druck im vierten Stock?", 
answerOptions: ("Erhöht sich um $0,2$ bar", "Verringert sich um $0,2$ bar", "Bleibt gleich", "Erhöht sich um $2$ bar"),
correctAnswerIndex: 1
)