#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bernoulli-Verteilung: Lotterie]
#v(40pt)
#only("1-")[Wir kaufen ein Los für 10 Euro mit folgenden Gewinnmöglichkeiten:]
#v(20pt)
#only("2-")[
- Niete (30%): 0 Euro
]
#only("3-")[
- Trostpreis (10%): 2 Euro
]
#only("4-")[
- Kleiner Gewinn (50%): 15 Euro
]
#only("5-")[
- Großer Gewinn (10%): 20 Euro
]
#v(40pt)
#only("6-")[
Was ist die Erfolgswahrscheinlichkeit $p$?
]

#only("1")[
#voiceover("Stellen wir uns vor, wir kaufen ein Lottolos für 10 Euro. Es gibt vier verschiedene Arten von Losen, die wir ziehen können.")
]
#only("2")[
#voiceover("Mit einer Wahrscheinlichkeit von 30% ziehen wir eine Niete und erhalten 0 Euro.")
]
#only("3")[
#voiceover("Mit einer Wahrscheinlichkeit von 10% erhalten wir einen Trostpreis von 2 Euro.")
]
#only("4")[
#voiceover("Ein kleiner Gewinn von 15 Euro hat eine Wahrscheinlichkeit von 50%,")
]
#only("5")[
#voiceover("während ein großer Gewinn von 20 Euro mit einer Wahrscheinlichkeit von 10% auftritt.")
]
#only("6")[
#voiceover("Wir wollen das ganze als Bernoulli-Experiment modellieren, wobei ein Erfolg bedeutet, dass wir insgesamt einen Gewinn erzielen. Also dass wir mehr Geld gewinnen, als wir für das Los bezahlt haben. Berechne die Erfolgswahrscheinlichkeit p?")
]
]

#questionDef(
  questionText: "Berechne die Erfolgswahrscheinlichkeit $p$ für das Bernoulli-Experiment.",
  // use latex!
  answerOptions: ("$0.6$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\\key{a}$")
  ),
)
