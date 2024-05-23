#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Image of a Linear Mapping]
#v(40pt)
#only("1-")[The image of a linear mapping $T$ is the set of all vectors $w$ such that:]
#v(40pt)
#only("2-")[a) $w = T(v)$ for some $v$ in $V$]
#v(10pt)
#only("3-")[b) $w = v$ for some $v$ in $V$]
#v(10pt)
#only("4-")[c) $w = 0$]
#v(10pt)
#only("5-")[d) $w = -T(v)$ for some $v$ in $V$]
#only("1")[#voiceover("Let's test your understanding of the image of a linear mapping. The image of a linear mapping T is the set of all vectors w such that:")]
#only("2")[#voiceover("Is it a) w equals T of v for some v in V,")]
#only("3")[#voiceover("or b) w equals v for some v in V,")]
#only("4")[#voiceover("or c) w equals zero,")]
#only("5")[#voiceover("or d) w equals negative T of v for some v in V?")]
]#questionDef(
questionText: "The image of a linear mapping $T$ is the set of all vectors $w$ such that:",
answerOptions: ("$w = T(v)$ for some $v$ in $V$", "$w = v$ for some $v$ in $V$", "$w = 0$", "$w = -T(v)$ for some $v$ in $V$"),
correctAnswerIndex: 0,
)