#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Tiefseetauchen 🤿]

#v(40pt)
#only("1-")[
- Tiefe: 1000 m 📏
- Dichte des Meerwassers ($rho$): 1020 kg/m³ 💧
- Volumen des Tauchers ($V$): 0.075 m³ 👤
- Erdbeschleunigung ($g$): 9.81 m/s² 🌍
]

#v(40pt)
#only("2-")[
#text(size: 25pt)[Auftriebskraft ($F_A$) = ?]
]

#v(40pt)
#only("3-")[
#text(size: 25pt)[Verwende: $F_A = rho dot V dot g$]
]

#only("1")[
#voiceover("Betrachte einen Taucher in einer Tiefe von 1000 Metern im Meerwasser. Die Dichte des Meerwassers beträgt 1020 Kilogramm pro Kubikmeter.")
]

#only("2")[
#voiceover("Wenn das Volumen des Tauchers 0.075 Kubikmeter beträgt, bestimme die Auftriebskraft, die in dieser Tiefe auf den Taucher wirkt.")
]

#only("3")[
#voiceover("Verwende die Formel F sub A gleich rho mal V mal g, wobei F sub A die Auftriebskraft ist, rho die Dichte des Meerwassers, V das Volumen des Tauchers und g die Erdbeschleunigung ist.")
]
]#questionDef(
questionText: "Wie groß ist die Auftriebskraft $F_A$, die auf den Taucher wirkt? (Antwort in Newton)",
answerOptions: ("$750.255$ N", "$0$ N"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 3,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ N"),
answerOptionsTypes: (
"a": "number"
)
),
)