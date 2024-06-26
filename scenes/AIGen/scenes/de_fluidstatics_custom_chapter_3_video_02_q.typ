#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Blutdruckumrechnung]
#v(40pt)
#only("1-")[
- Blutdruck wird häufig in mmHg gemessen 🩸
]
#v(20pt)
#only("2-")[
- mmHg spiegelt die Höhe der Quecksilbersäule wider, die durch den Blutdruck ausgeglichen wird 🌡
]
#v(20pt)
#only("3-")[
- Umrechung von 120/80 mmHg in Pascal mittels:
]
#v(10pt)
#only("3-")[
$ p = rho dot g dot h $
]
#v(10pt)
#only("4-")[
wobei $ rho $ für Quecksilber 13545,9 kg/m³ beträgt
]

#only("1")[
#voiceover("Blutdruck wird häufig in Millimeter Quecksilbersäule, oder mmHg, gemessen.")
]
#only("2")[
#voiceover("Diese Einheit spiegelt die Höhe einer Quecksilbersäule wider, die durch den Blutdruck ausgeglichen wird.")
]
#only("3")[
#voiceover("Um einen Blutdruck von 120 zu 80 mmHg in Pascal umzurechnen, verwenden wir die Formel p gleich rho mal g mal h,")
]
#only("4")[
#voiceover("wobei rho, die Dichte von Quecksilber, 13545,9 Kilogramm pro Kubikmeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Rechne einen Blutdruck von 120/80 mmHg in Pascal um.
]
#v(20pt)
#only("2-")[
Verwende:
]
#v(10pt)
#only("2-")[
$ p = rho dot g dot h $
]
#v(10pt)
#only("3-")[
wobei $ rho $ für Quecksilber 13545,9 kg/m³ beträgt.
]
#v(20pt)
#only("4-")[
Gib deine Antwort in Pascal an. 📏
]

#only("1")[
#voiceover("Hier ist die Frage: Rechne einen Blutdruck von 120 zu 80 mmHg in Pascal um.")
]
#only("2")[
#voiceover("Verwende die Formel p gleich rho mal g mal h,")
]
#only("3")[
#voiceover("wobei rho, die Dichte von Quecksilber, 13545,9 Kilogramm pro Kubikmeter beträgt.")
]
#only("4")[
#voiceover("Gib deine Antwort in Pascal an.")
]
]#questionDef(
questionText: "Rechne einen Blutdruck von $120/80$ mmHg in Pascal um. Verwende $ p = \rho \cdot g \cdot h $, wobei $ \rho $ für Quecksilber $ 13545,9 \, \\text{kg/m}^3 $ beträgt. Gib deine Antwort in Pascal für systolischen und diastolischen Druck an.",
answerOptions: (
"Systolisch: $p=15936,73$ Pa, Diastolisch: $p=10624,49$ Pa",
"Systolisch: $p=0$ Pa, Diastolisch: $p=0$ Pa",
),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 1.0001
)
),
answerOptionMatcher:("Systolisch: $p=\key{a}$ Pa, Diastolisch: $p=\key{b}$ Pa"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)