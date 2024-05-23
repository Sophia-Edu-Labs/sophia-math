#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Decomposing Functions]
// The title "Decomposing Functions" is shown on this slide
#v(40pt)
#only("1-")[Given: $h(x) = (2x + 3)^2$]
// The given function h(x) is shown from slide 1 onward
#v(40pt)
#only("2-")[What are possible functions $f(x)$ and $g(x)$ such that $h(x) = f(g(x))$?]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) $f(x) = x^2$, $g(x) = 2x + 3$]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) $f(x) = 2x + 3$, $g(x) = x^2$]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) $f(x) = x + 3$, $g(x) = 2x$]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) $f(x) = 2(x + 3)$, $g(x) = x$]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Let's consider the function h of x equals the quantity 2x plus 3 squared.")]
#only("2")[#voiceover("We want to decompose this function into two functions f and g such that h of x equals f of g of x.")]
#only("3")[#voiceover("Could it be f of x equals x squared and g of x equals 2x plus 3?")]
#only("4")[#voiceover("Or maybe f of x equals 2x plus 3 and g of x equals x squared?")]
#only("5")[#voiceover("How about f of x equals x plus 3 and g of x equals 2x?")]
#only("6")[#voiceover("Or lastly, could it be f of x equals 2 times the quantity x plus 3 and g of x equals x?")]
]#questionDef(
questionText: "Given $ h(x) = (2x + 3)^2 $, what are possible functions $ f(x) $ and $ g(x) $ such that $ h(x) = f(g(x)) $?",
answerOptions: ("$ f(x) = x^2 $, $ g(x) = 2x + 3 $", "$ f(x) = 2x + 3 $, $ g(x) = x^2 $", "$ f(x) = x + 3 $, $ g(x) = 2x $", "$ f(x) = 2(x + 3) $, $ g(x) = x $"),
correctAnswerIndex: 0
)