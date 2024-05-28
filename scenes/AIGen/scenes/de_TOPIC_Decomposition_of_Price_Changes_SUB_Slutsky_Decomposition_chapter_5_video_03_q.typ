#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
// Der Titel "Slutsky-Zerlegung" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[- Trennt den Effekt einer Preisänderung in:]
// Der Aufzählungspunkt wird ab Folie 1 angezeigt

#v(20pt)

#only("2-")[   - Substitutionseffekt 🔄]
// Der Substitutionseffekt-Aufzählungspunkt wird ab Folie 2 angezeigt
#only("3-")[   - Einkommenseffekt 💰]
// Der Einkommenseffekt-Aufzählungspunkt wird ab Folie 3 angezeigt

#v(40pt)

#only("4-")[Wie wird eine Senkung des Preises von Gut $X$ grafisch im Hinblick auf den Substitutions- und Einkommenseffekt dargestellt? 📉]
// Die Frage wird ab Folie 4 angezeigt

#only("1")[
#voiceover("Die Slutsky-Zerlegung trennt den Effekt einer Preisänderung in:")
]

#only("2")[
#voiceover("den Substitutionseffekt")
]

#only("3")[
#voiceover("und den Einkommenseffekt.")
]

#only("4")[
#voiceover("Wie wird eine Senkung des Preises von Gut $X$ grafisch im Hinblick auf den Substitutions- und Einkommenseffekt dargestellt?")
]

]#questionDef(
questionText: "Wie wird eine Senkung des Preises von Gut $X$ grafisch im Hinblick auf den Substitutions- und Einkommenseffekt dargestellt?",
answerOptions: ("Die Budgetgerade dreht sich nach außen, der Substitutionseffekt bewegt den Konsum entlang der anfänglichen Indifferenzkurve, und der Einkommenseffekt verschiebt sich zu einer höheren Indifferenzkurve.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)