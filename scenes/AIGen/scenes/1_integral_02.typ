#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Beginnen wir mit der Bestimmung des Integrals der gegebenen Funktion.")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 2xe^)x^2( + 4x $]]
#only("2")[
  #voiceover("die Funktion f von x gleich 2 mal x mal e hoch x quadrat plus 4 mal x.")
]
]

#slide()[

#only("1")[
  #voiceover("Um eine Stammfunktion zu finden, nutzen wir die Kettenregel und die lineare Integration.")
]
#only("2")[
  #voiceover("Lasst uns mit dem Lösungsansatz beginnen!")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Kettenregel]
    #only("2-")[- Lineare Integration]
]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 2xe^)x^2( + 4x$]
#only("1")[

  #voiceover("Wir beginnen mit der Funktion f von x gleich 2 mal x mal e hoch x Quadrat plus 4 mal x.")
]
#v(10pt)
#only("2")[

  #voiceover("Zuerst teilen wir die Funktion in zwei Teile und integrieren diese getrennt voneinander.")
]
#v(10pt)
#only("3-")[
  #align(center)[
    #text(fill:aqua)[⇓ Teilung der Funktion]
  ]
]
#only("3")[
  #voiceover("Teil eins ist 2 mal x mal e hoch x Quadrat, und Teil zwei ist 4 mal x. Wir integrieren beide Teile getrennt.")
]
#v(10pt)
#only("4-")[
  $ \text)Teil 1:( integral 2xe^)x^2( dif x$
]
#only("5-")[
  $ \text)Teil 2:( integral 4x dif x$
]
#only("4")[
  #voiceover("Betrachten wir zuerst den ersten Teil, 2 mal x mal e hoch x Quadrat. Die Integration erfolgt über die Substitution der Variablen.")
]

#only("5")[
  #voiceover("Im zweiten Teil, 4 mal x, nutzen wir die Potenzregel der Integration.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Integration von Teil 1]
#v(40pt)
$ \text)Setze ( u = x^2 \Rightarrow \frac)du()dif x( = 2x \Rightarrow dif x = \frac)du()2x( $
#v(10pt)
$ integral 2xe^)x^2( dif x = integral e^u \frac)du()2( = \frac)1()2( integral e^u du = \frac)1()2( e^u + C_1$
#v(10pt)
$ \text)Rücksubstitution: ( \frac)1()2( e^)x^2( + C_1 $
#v(10pt)
#only("1")[

  #voiceover("Für den ersten Teil führen wir eine Substitution durch, setzen u gleich x Quadrat. Dann ist du durch dif x gleich 2x, daraus folgt, dass dif x gleich du durch 2x ist. Dies ermöglicht es uns, das Integral zu vereinfachen und letztendlich e hoch u durch 2 zu integrieren und wieder rückzusubstituieren, um e hoch x Quadrat durch 2 plus eine Konstante C1 zu erhalten.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Integration von Teil 2]
#v(40pt)
$ integral 4x dif x = 2x^2 + C_2 $
#v(10pt)
#only("1")[
  #voiceover("Für den zweiten Teil nutzen wir direkt die Potenzregel der Integration. Das Integral von 4 mal x ist 2 mal x Quadrat plus eine Konstante C2.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung der Lösung]
#v(40pt)
$ F(x) = \frac)1()2( e^)x^2( + 2x^2 + C $
#v(10pt)
#only("1")[
  #voiceover("Zur Zusammenführung der beiden Teile nehmen wir die Ergebnisse und fügen eine allgemeine Integrationskonstante C hinzu. Die Stammfunktion F von x ist also e hoch x Quadrat durch 2 plus 2 mal x Quadrat plus C.")
]
]
```

return SophiaTaskDefinition(
        answerOptions = [
            "Die korrekte Antwort: $e^)x^2(+2x^2$, oder eine äquivalente Antwort",
            "Die Antwort ist inkorrekt",
            ],
        correctAnswerIndex = 0,
        questionText = "Gegeben sei die Funktion $f(x)=2xe^)x^2(+4x$. Bestimme das Integral der Funktion.",
        llmCheckDetails=SophiaLLMQuestionCheckDetail(
            fallbackOptionIndex=1,
            specialInputSnippets = ["[ ]", "f"]