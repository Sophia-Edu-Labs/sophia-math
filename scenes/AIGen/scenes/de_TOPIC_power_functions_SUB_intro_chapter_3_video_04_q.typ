#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion mit negativem Koeffizienten]
  #v(40pt)

  #only("1-")[Schreibe eine Potenzfunktion, die:]
  #v(20pt)
  #only("2-")[- Einen negativen Koeffizienten hat 📉]
  #v(10pt)
  #only("3-")[- Durch den Punkt (1, -5) geht 📍]
  #v(10pt)
  #only("4-")[- $b = 2$ hat 🔢]

  #only("1")[
    #voiceover("Lass uns eine Potenzfunktion mit bestimmten Eigenschaften betrachten.")
  ]

  #only("2")[
    #voiceover("Zuerst brauchen wir eine Potenzfunktion mit einem negativen Koeffizienten.")
  ]

  #only("3")[
    #voiceover("Zweitens sollte diese Funktion durch den Punkt eins Komma minus fünf gehen.")
  ]

  #only("4")[
    #voiceover("Zuletzt wissen wir, dass b gleich zwei ist.")
  ]

  #only("5-")[Kannst du die Gleichung für diese Potenzfunktion aufstellen?]

  #only("5")[
    #voiceover("Kannst du die Gleichung für diese Potenzfunktion aufstellen, die all diese Bedingungen erfüllt?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Schreibe die Potenzfunktion, die einen negativen Koeffizienten hat und durch den Punkt $(1, -5)$ geht mit $b = 2$.", 
answerOptions: ("$f(x) = -5x^2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)