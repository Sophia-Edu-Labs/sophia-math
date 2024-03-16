#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("1-")[
- A: Eine Fußballmannschaft gewinnt ein Spiel
]
#v(40pt)
#only("2-")[
- B:  Gewinnt auch nächstes Spiel
]
#v(10pt)
#only("3-")[
- C: Top-Stürmer trifft
]
#v(10pt)
#only("4-")[
- D: Fehlentscheidung
]
#v(40pt)
#only("5-")[Welches Ereignis ist am ehesten #text(weight: "bold")[unabhängig von A?]]
#only("1")[
#voiceover("Betrachten wir ein Fußballspiel und das Ereignis A: Eine bestimmte Mannschaft gewinnt dieses Spiel. Welches der folgenden drei Ereignisse ist stochastisch unabhängig von A?")
]
#only("2")[
#voiceover("Ereignis B: Die Mannschaft gewinnt auch ihr nächstes Spiel. Beeinflusst der Ausgang eines Spiels die Wahrscheinlichkeit, dass die Mannschaft auch das nächste Spiel gewinnt?")
]
#only("3")[
#voiceover("Ereignis C: Der Top-Stürmer der Mannschaft erzielt ein Tor. Ist die Wahrscheinlichkeit dafür, dass der beste Stürmer trifft, davon abhängig, ob seine Mannschaft das Spiel gewinnt?")
]
#only("4")[
#voiceover("Und Ereignis D: Der Schiedsrichter trifft eine Fehlentscheidung.")
]
#only("5")[
#voiceover("Überlege bei jedem Ereignis sorgfältig, ob sein Eintreten wirklich vom Ausgang des Spiels beeinflusst wird. Welches Ereignis ist am ehesten unabhängig vom Sieg der Mannschaft in diesem Spiel?")
]
]
#questionDef(
questionText: "Welches Ereignis ist am ehesten unabhängig von A?",
answerOptions: ("B: Sieg im nächsten Spiel", "C: Tor durch Top-Stürmer", "D: Fehlentscheidung des Schiedsrichters"),
correctAnswerIndex: 2,
)