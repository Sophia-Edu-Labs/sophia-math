#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Betrachten wir die kompensierte Nachfragefunktion für Gut X im Kontext der Hicks-Dekomposition.")
]

#text(size: 30pt, weight: "bold")[Kompensierte Nachfragefunktion]
// Der Titel "Kompensierte Nachfragefunktion" wird auf allen Folien angezeigt

#v(40pt)

#only("2-")[- Funktion: $h_X(p_X, p_Y, U)$]
// Die Funktion h_X wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[- $p_X$: Preis von Gut X 💰]
// Die Erklärung für p_X wird ab Folie 3 angezeigt

#v(20pt)

#only("4-")[- $p_Y$: Preis von Gut Y 💰]
// Die Erklärung für p_Y wird ab Folie 4 angezeigt

#v(20pt)

#only("5-")[- $U$: Nutzenniveau 😊]
// Die Erklärung für U wird ab Folie 5 angezeigt

#v(40pt)

#only("6-")[Schreibe die Gleichung für die kompensierte Nachfragefunktion für Gut X auf.]
// Die Frage wird ab Folie 6 angezeigt

#only("2")[
#voiceover("Die kompensierte Nachfragefunktion für Gut X wird als h Index X bezeichnet und ist eine Funktion von drei Variablen.")
]

#only("3")[
#voiceover("p Index X steht für den Preis von Gut X,")
]

#only("4")[
#voiceover("p Index Y steht für den Preis von Gut Y,")
]

#only("5")[
#voiceover("und U steht für das Nutzenniveau.")
]

#only("6")[
#voiceover("Jetzt bist Du dran. Schreibe die Gleichung für die kompensierte Nachfragefunktion für Gut X auf.")
]

]#questionDef(
questionText: "Schreibe die Gleichung für die kompensierte Nachfragefunktion für Gut X auf.",
answerOptions: ("Die kompensierte Nachfragefunktion für Gut X ist $h_X(p_X, p_Y, U)$, oder eine gleichwertige Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)