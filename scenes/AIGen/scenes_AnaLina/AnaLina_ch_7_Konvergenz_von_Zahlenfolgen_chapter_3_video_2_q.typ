#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenzkriterien 🔍]
#v(40pt)
#only("1-")[Welches Kriterium wird oft verwendet, um die Konvergenz einer Zahlenfolge zu bestimmen? 🤔]
#v(40pt)
#only("2-")[a) Epsilon-Kriterium ($ε$-Kriterium)]
#v(10pt)
#only("3-")[b) Delta-Kriterium ($δ$-Kriterium)]
#v(10pt)
#only("4-")[c) Gamma-Kriterium ($γ$-Kriterium)]
#v(10pt)
#only("5-")[d) Theta-Kriterium ($θ$-Kriterium)]
#only("1")[#voiceover("Lass uns dein Wissen über Konvergenzkriterien testen. Welches Kriterium wird oft verwendet, um die Konvergenz einer Zahlenfolge zu bestimmen?")]
#only("2")[#voiceover("Ist es das Epsilon-Kriterium, auch bekannt als das ε-Kriterium,")]
#only("3")[#voiceover("oder ist es das Delta-Kriterium, auch bekannt als das δ-Kriterium,")]
#only("4")[#voiceover("oder vielleicht das Gamma-Kriterium, auch bekannt als das γ-Kriterium,")]
#only("5")[#voiceover("oder ist es das Theta-Kriterium, auch bekannt als das θ-Kriterium?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Welches Kriterium wird oft verwendet, um die Konvergenz einer Zahlenfolge zu bestimmen?",
answerOptions: ("Epsilon-Kriterium ($\\varepsilon$-Kriterium)", "Delta-Kriterium ($\\delta$-Kriterium)", "Gamma-Kriterium ($\\gamma$-Kriterium)", "Theta-Kriterium ($\\theta$-Kriterium)"),
correctAnswerIndex: 0,
)