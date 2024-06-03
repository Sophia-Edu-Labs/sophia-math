#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Eiswürfel im Wasser 🧊💧]
// Der Titel "Eiswürfel im Wasser" mit Emojis wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[In einem Glas, das mit Wasser gefüllt ist, schwimmt ein Eiswürfel. 🥃]
// Die Aussage "In einem Glas, das mit Wasser gefüllt ist, schwimmt ein Eiswürfel." mit einem Emoji wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[Der Eiswürfel schmilzt. 🌡️]
// Die Aussage "Der Eiswürfel schmilzt." mit einem Emoji wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Was passiert mit dem Wasserspiegel? 🤔]
// Die Frage "Was passiert mit dem Wasserspiegel?" mit einem nachdenklichen Emoji wird ab Folie 3 angezeigt

#only("1")[
#voiceover("Stell dir ein Glas vor, das mit Wasser gefüllt ist. In diesem Glas schwimmt ein Eiswürfel.")
]

#only("2")[
#voiceover("Nun stell dir vor, der Eiswürfel schmilzt vollständig.")
]

#only("3")[
#voiceover("Was denkst du, wird mit dem Wasserspiegel im Glas passieren?")
]

]#questionDef(
questionText: "In einem Glas, das mit Wasser gefüllt ist, schwimmt ein Eiswürfel. Der Eiswürfel schmilzt. Was passiert mit dem Wasserspiegel?",
answerOptions: ("Der Wasserspiegel bleibt gleich, da das geschmolzene Eis das gleiche Volumen Wasser hinzufügt, wie das verdrängte Wasser des Eiswürfels.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)