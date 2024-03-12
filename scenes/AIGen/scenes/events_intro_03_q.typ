#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 26pt, weight: "bold")[⚅ Dreimaliger Würfelwurf ⚀]
#v(40pt)
#only("1")[#voiceover("Betrachte einen dreimaligen Würfelwurf mit einem fairen Würfel.")]
#v(20pt)
#only("2-")[
Welche der folgenden Optionen ist ein #text(weight: "bold")[Ergebnis]?
]
#only("2")[#voiceover("Welche der folgenden Optionen ist ein Ergebnis?")]
#v(40pt)
#only("3-")[
- Alle Würfe ⚀
]
#only("3")[#voiceover("Ist es die Option, dass alle Würfe eine eins ergeben?")]
#v(10pt)
#only("4-")[

- Nur ⚀ und ⚁
]
#only("4")[#voiceover("Oder die Option, dass nur einser und zweier gewürfelt werden?")]
#v(10pt)
#only("5-")[
- 1. Wurf gerade, 2. Wurf ungerade, 3. Wurf gerade
]
#only("5")[#voiceover("Oder ist es die Option, dass der erste Wurf gerade, der zweite ungerade und der dritte wieder gerade ist?")]
#v(10pt)
#only("6-")[
- 1. Wurf ⚀, 2. Wurf $>1$. Wurf, 3. Wurf $<2$. Wurf
]
#only("6")[#voiceover("Oder, letzte Möglichkeit, die Option dass der erste Wurf eine eins ist, der zweite Wurf größer als der erste und der dritte Wurf kleiner als der zweite?")]
]
#questionDef(
questionText: "Welche Option ist ein Ergebnis beim dreimaligen Würfeln?",
answerOptions: ("Alle Würfe $1$", "Nur $1$er und $2$er", "$1$. Wurf gerade, $2$. Wurf ungerade, $3$. Wurf gerade",
"$1$. Wurf $1$, $2$. Wurf $>1$. Wurf, $3$. Wurf $<2$. Wurf"),
correctAnswerIndex: 3
)