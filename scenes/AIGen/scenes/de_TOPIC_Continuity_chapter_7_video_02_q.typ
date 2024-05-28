#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
#v(40pt)
#only("1-")[Was ist erforderlich, damit eine Funktion an einem Punkt stetig ist?]
#v(40pt)
#only("2-")[
- Der Grenzwert muss existieren
]
#v(10pt)
#only("3-")[  
- Die Funktion muss an diesem Punkt definiert sein
]
#v(10pt)
#only("4-")[
- Der Grenzwert muss dem Funktionswert an diesem Punkt entsprechen  
]
#v(10pt)
#only("5-")[
- Alles oben Genannte
]
#only("1")[#voiceover("Lass uns dein Wissen über Stetigkeit testen. Was ist erforderlich, damit eine Funktion an einem Punkt stetig ist?")]
#only("2")[#voiceover("Muss der Grenzwert an diesem Punkt existieren,")]  
#only("3")[#voiceover("oder muss die Funktion an diesem Punkt definiert sein,")]
#only("4")[#voiceover("oder muss der Grenzwert dem Funktionswert an diesem Punkt entsprechen,")]
#only("5")[#voiceover("oder ist es alles oben Genannte?")]
]#questionDef(
questionText: "Was ist erforderlich, damit eine Funktion an einem Punkt stetig ist?",
answerOptions: ("Der Grenzwert muss existieren", "Die Funktion muss an diesem Punkt definiert sein", "Der Grenzwert muss dem Funktionswert an diesem Punkt entsprechen", "Alles oben Genannte"),
correctAnswerIndex: 3,
)