#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Differenzierungsproblem.")
  ]

  #text(size: 30pt, weight: "bold")[Kettenregel und Produktregel kombinieren]
  #v(40pt)

  #only("2-")[
    #text()[Differenziere die Funktion:]
    #v(20pt)
    $ f(x) = x^2 e^(3x) $
  ]

  #only("3-")[
    #text()[Verwende sowohl die Produktregel als auch die Kettenregel.]
  ]

  #only("2")[
    #voiceover("Wir müssen die Funktion f von x differenzieren, die gleich x Quadrat mal e hoch drei x ist.")
  ]

  #only("3")[
    #voiceover("Um dies zu lösen, müssen wir sowohl die Produktregel als auch die Kettenregel anwenden. Überlege, wie Du dieses Problem mit diesen beiden Regeln angehen könntest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differenziere $f(x) = x^2 e^{3x}$ unter Verwendung sowohl der Produktregel als auch der Kettenregel.", 
answerOptions: ("Verwendung der Produktregel: 

$f(x) = x^2 e^{3x}$ 

Sei $u = x^2$ und $v = e^{3x}$. Dann ist $f(x) = u \times v$. 

Die Produktregel besagt, dass $(uv)' = u'v + uv'$. 

Finde zuerst $u'$ und $v'$: 

$u' = \frac{d}{dx}(x^2) = 2x$ 

$v' = \frac{d}{dx}(e^{3x}) = e^{3x} \times \frac{d}{dx}(3x) = 3e^{3x}$ 

Wende nun die Produktregel an: 

$f'(x) = u'v + uv' = (2x)e^{3x} + (x^2)(3e^{3x})$ 

Vereinfache: 

$f'(x) = 2xe^{3x} + 3x^2 e^{3x}$ 

Verwendung der Kettenregel: 

Schreibe $f(x)$ um als $f(x) = x^2 \times e^{3x}$. 

Sei $g(x) = x^2$ und $h(x) = e^{3x}$. Dann ist $f(x) = g(x) \times h(x)$. 

Die Kettenregel besagt, dass wenn $y = g(h(x))$, dann $\frac{dy}{dx} = g'(h(x)) \times h'(x)$. 

Finde zuerst $g'(x)$ und $h'(x)$: 

$g'(x) = \frac{d}{dx}(x^2) = 2x$ 

$h'(x) = \frac{d}{dx}(e^{3x}) = 3e^{3x}$ 

Wende nun die Kettenregel an: 

$f'(x) = g'(h(x)) \times h'(x) = 2x \times 3e^{3x}$ 

Kombiniere die Ergebnisse: 

$f'(x) = 2xe^{3x} + 3x^2 e^{3x}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)