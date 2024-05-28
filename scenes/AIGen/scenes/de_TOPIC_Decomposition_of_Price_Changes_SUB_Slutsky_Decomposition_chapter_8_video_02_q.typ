#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Zerlegung]
#v(40pt)
#only("1-")[Der Hauptunterschied zwischen der Slutsky- und der Hicks-Zerlegung besteht darin, dass die Slutsky-Zerlegung \_\_\_\_\_ konstant hält, während die Hicks-Zerlegung \_\_\_\_\_ konstant hält.]
#v(40pt)
#only("2-")[a) Nutzen, reales Einkommen]
#v(10pt)
#only("3-")[b) reales Einkommen, Nutzen]
#v(10pt)  
#only("4-")[c) nominales Einkommen, reales Einkommen]
#v(10pt)
#only("5-")[d) reales Einkommen, nominales Einkommen]

#only("1")[#voiceover("Lass uns Dein Wissen über den Unterschied zwischen der Slutsky- und der Hicks-Zerlegung testen. Der Hauptunterschied besteht darin, dass die Slutsky-Zerlegung etwas konstant hält, während die Hicks-Zerlegung etwas anderes konstant hält. Was sind diese beiden Dinge?")]
#only("2")[#voiceover("Ist es so, dass die Slutsky-Zerlegung den Nutzen konstant hält, während die Hicks-Zerlegung das reale Einkommen konstant hält?")]
#only("3")[#voiceover("Oder hält die Slutsky-Zerlegung das reale Einkommen konstant, während die Hicks-Zerlegung den Nutzen konstant hält?")]
#only("4")[#voiceover("Oder vielleicht hält die Slutsky-Zerlegung das nominale Einkommen konstant, während die Hicks-Zerlegung das reale Einkommen konstant hält?")]
#only("5")[#voiceover("Oder schließlich hält die Slutsky-Zerlegung das reale Einkommen konstant, während die Hicks-Zerlegung das nominale Einkommen konstant hält?")]
]#questionDef(
questionText: "Der Hauptunterschied zwischen der Slutsky- und der Hicks-Zerlegung besteht darin, dass die Slutsky-Zerlegung ____ konstant hält, während die Hicks-Zerlegung ____ konstant hält.",
answerOptions: ("Nutzen, reales Einkommen", "reales Einkommen, Nutzen", "nominales Einkommen, reales Einkommen", "reales Einkommen, nominales Einkommen"),
correctAnswerIndex: 1
)