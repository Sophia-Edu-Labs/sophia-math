#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following differentiation problem.")
  ]

  #text(size: 30pt, weight: "bold")[Combining Chain Rule and Product Rule]
  #v(40pt)

  #only("2-")[
    #text()[Differentiate the function:]
    #v(20pt)
    $ f(x) = x^2 e^(3x) $
  ]

  #only("3-")[
    #text()[Using both the product rule and the chain rule.]
  ]

  #only("2")[
    #voiceover("We need to differentiate the function f of x, which is equal to x squared times e to the power of three x.")
  ]

  #only("3")[
    #voiceover("To solve this, we'll need to apply both the product rule and the chain rule. Think about how you might approach this problem using these two rules.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = x^2 e^{3x}$ using both the product rule and the chain rule.", 
answerOptions: ("Using the product rule: 

$f(x) = x^2 e^{3x}$ 

Let $u = x^2$ and $v = e^{3x}$. Then, $f(x) = u 	imes v$. 

The product rule states that $(uv)' = u'v + uv'$. 

First, find $u'$ and $v'$: 

$u' = \frac{d}{dx}(x^2) = 2x$ 

$v' = \frac{d}{dx}(e^{3x}) = e^{3x} 	imes \frac{d}{dx}(3x) = 3e^{3x}$ 

Now, apply the product rule: 

$f'(x) = u'v + uv' = (2x)e^{3x} + (x^2)(3e^{3x})$ 

Simplify: 

$f'(x) = 2xe^{3x} + 3x^2 e^{3x}$ 

Using the chain rule: 

Rewrite $f(x)$ as $f(x) = x^2 	imes e^{3x}$. 

Let $g(x) = x^2$ and $h(x) = e^{3x}$. Then, $f(x) = g(x) 	imes h(x)$. 

The chain rule states that if $y = g(h(x))$, then $\frac{dy}{dx} = g'(h(x)) 	imes h'(x)$. 

First, find $g'(x)$ and $h'(x)$: 

$g'(x) = \frac{d}{dx}(x^2) = 2x$ 

$h'(x) = \frac{d}{dx}(e^{3x}) = 3e^{3x}$ 

Now, apply the chain rule: 

$f'(x) = g'(h(x)) 	imes h'(x) = 2x 	imes 3e^{3x}$ 

Combine the results: 

$f'(x) = 2xe^{3x} + 3x^2 e^{3x}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)