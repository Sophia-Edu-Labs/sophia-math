#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendung in der realen Welt]
// Der Titel "Anwendung in der realen Welt" wird auf allen Folien angezeigt
#v(40pt)

#only("1-")[Betrachte ein Szenario, in dem die Regierung eine Steuer auf ein bestimmtes Gut erhebt. 🏛️]
// Das Szenario wird ab Folie 1 angezeigt
#v(20pt)

#only("2-")[Wie kann die Hicks-Dekomposition verwendet werden, um die Auswirkungen dieser Steuer auf das Verbraucherverhalten zu analysieren? 🤔]
// Die Frage wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Betrachte ein Szenario in der realen Welt, in dem die Regierung eine Steuer auf ein bestimmtes Gut erhebt.")
]

#only("2")[
#voiceover("Wie kann die Hicks-Dekomposition verwendet werden, um die Auswirkungen dieser Steuer auf das Verbraucherverhalten zu analysieren?")
]
]#questionDef(
questionText: "Wie kann die Hicks-Dekomposition verwendet werden, um die Auswirkungen einer Steuer auf ein bestimmtes Gut auf das Verbraucherverhalten zu analysieren?",
answerOptions: ("Die Hicks-Dekomposition kann die Substitutions- und Einkommenseffekte der Preissteigerung durch die Steuer trennen, was hilft zu verstehen, wie Verbraucher ihren Konsum des besteuerten Gutes und anderer Güter anpassen.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)