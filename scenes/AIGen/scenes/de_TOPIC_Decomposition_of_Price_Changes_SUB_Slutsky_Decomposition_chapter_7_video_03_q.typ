#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
#voiceover("Betrachten wir eine reale Anwendung der Slutsky-Zerlegung.")
]

#text(size: 30pt, weight: "bold")[Reales Beispiel]
// Der Titel "Reales Beispiel" wird auf allen Folien angezeigt

#v(40pt)

#only("2-")[- Betrachte einen Preisrückgang im öffentlichen Nahverkehr 🚌]
// Die Überlegung zum Preisrückgang im öffentlichen Nahverkehr wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Wie könnte dies die Nachfrage nach privater Autonutzung beeinflussen? 🚗]
// Die Frage nach der Auswirkung auf die Nachfrage nach privater Autonutzung wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Angenommen, der Preis für den öffentlichen Nahverkehr sinkt.")
]

#only("3")[
#voiceover("Wie könnte dies die Nachfrage nach privater Autonutzung beeinflussen?")
]

]#questionDef(
questionText: "Wie kann die Slutsky-Zerlegung angewendet werden, um die Auswirkung eines Preisrückgangs im öffentlichen Nahverkehr auf die Nachfrage nach privater Autonutzung zu analysieren?",
answerOptions: ("Die Slutsky-Zerlegung kann den Substitutionseffekt (Wechsel von Autos zu öffentlichen Verkehrsmitteln aufgrund der Preisänderung) und den Einkommenseffekt (erhöhtes reales Einkommen ermöglicht mehr von beiden Gütern) trennen, oder eine gleichwertige Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)