#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
#v(40pt)
#only("1-")[If $f(x)$ and $g(x)$ are inverses, what should $f(g(x))$ and $g(f(x))$ equal?]
#v(40pt)
#only("2-")[a) $f(x)$]
#v(10pt)
#only("3-")[b) $g(x)$]
#v(10pt) 
#only("4-")[c) $x$]
#v(10pt)
#only("5-")[d) $0$]

#only("1")[#voiceover("Let's test your knowledge on inverse functions. If f of x and g of x are inverses, what should the composition of f and g of x, and the composition of g and f of x equal?")]
#only("2")[#voiceover("Should it equal f of x,")]  
#only("3")[#voiceover("or g of x,")]
#only("4")[#voiceover("or just x,")]
#only("5")[#voiceover("or should it equal 0?")]
]#questionDef(
questionText: "If $ f(x) $ and $ g(x) $ are inverses, what should $ f(g(x)) $ and $ g(f(x)) $ equal?",
answerOptions: ("$ f(x) $", "$ g(x) $", "$ x $", "$ 0 $"),
correctAnswerIndex: 2
)