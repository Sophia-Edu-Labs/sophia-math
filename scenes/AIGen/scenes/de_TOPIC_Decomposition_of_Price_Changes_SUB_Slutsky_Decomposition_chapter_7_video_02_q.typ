#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung 🔍]
#v(40pt)
#only("1-")[Die Slutsky-Zerlegung kann verwendet werden, um \_\_\_\_\_ zu analysieren.]
#v(40pt)
#only("2-")[a) das Verhalten der Konsumenten 🛒]
#v(10pt)
#only("3-")[b) das Verhalten der Produzenten 🏭]
#v(10pt)
#only("4-")[c) das Marktgleichgewicht ⚖]
#v(10pt)
#only("5-")[d) Regierungspolitiken 🏛]
#only("1")[#voiceover("Lass uns Dein Wissen über die Slutsky-Zerlegung testen. Die Slutsky-Zerlegung kann verwendet werden, um zu analysieren...")]
#only("2")[#voiceover("Ist es das Verhalten der Konsumenten,")]
#only("3")[#voiceover("oder das Verhalten der Produzenten,")]
#only("4")[#voiceover("oder vielleicht das Marktgleichgewicht,")]
#only("5")[#voiceover("oder Regierungspolitiken?")]
]#questionDef(
questionText: "Die Slutsky-Zerlegung kann verwendet werden, um ______ zu analysieren.",
answerOptions: ("das Verhalten der Konsumenten", "das Verhalten der Produzenten", "das Marktgleichgewicht", "Regierungspolitiken"),
correctAnswerIndex: 0
)