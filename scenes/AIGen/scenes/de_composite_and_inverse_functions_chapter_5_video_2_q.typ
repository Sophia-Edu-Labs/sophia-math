#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse Funktionen]
#v(40pt)
#only("1-")[Wenn $f(x)$ und $g(x)$ Inverse sind, was sollte $f(g(x))$ und $g(f(x))$ ergeben?]
#v(40pt)
#only("2-")[a) $f(x)$]
#v(10pt)
#only("3-")[b) $g(x)$]
#v(10pt) 
#only("4-")[c) $x$]
#v(10pt)
#only("5-")[d) $0$]

#only("1")[#voiceover("Lass uns dein Wissen über inverse Funktionen testen. Wenn f von x und g von x Inverse sind, was sollte die Zusammensetzung von f und g von x und die Zusammensetzung von g und f von x ergeben?")]
#only("2")[#voiceover("Sollte es f von x ergeben,")]  
#only("3")[#voiceover("oder g von x,")]
#only("4")[#voiceover("oder einfach nur x,")]
#only("5")[#voiceover("oder sollte es 0 ergeben?")]
]#questionDef(
questionText: "Wenn $ f(x) $ und $ g(x) $ Inverse sind, was sollte $ f(g(x)) $ und $ g(f(x)) $ ergeben?",
answerOptions: ("$ f(x) $", "$ g(x) $", "$ x $", "$ 0 $"),
correctAnswerIndex: 2
)