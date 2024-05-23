#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bild einer linearen Abbildung]
#v(40pt)
#only("1-")[Das Bild einer linearen Abbildung $T$ ist die Menge aller Vektoren $w$, so dass:]
#v(40pt)
#only("2-")[a) $w = T(v)$ für ein $v$ in $V$]
#v(10pt)
#only("3-")[b) $w = v$ für ein $v$ in $V$]
#v(10pt)
#only("4-")[c) $w = 0$]
#v(10pt)
#only("5-")[d) $w = -T(v)$ für ein $v$ in $V$]
#only("1")[#voiceover("Lass uns dein Verständnis des Bildes einer linearen Abbildung testen. Das Bild einer linearen Abbildung T ist die Menge aller Vektoren w, so dass:")]
#only("2")[#voiceover("Ist es a) w gleich T von v für ein v in V,")]
#only("3")[#voiceover("oder b) w gleich v für ein v in V,")]
#only("4")[#voiceover("oder c) w gleich null,")]
#only("5")[#voiceover("oder d) w gleich minus T von v für ein v in V?")]
]#questionDef(
questionText: "Das Bild einer linearen Abbildung $T$ ist die Menge aller Vektoren $w$, so dass:",
answerOptions: ("$w = T(v)$ für ein $v$ in $V$", "$w = v$ für ein $v$ in $V$", "$w = 0$", "$w = -T(v)$ für ein $v$ in $V$"),
correctAnswerIndex: 0,
)