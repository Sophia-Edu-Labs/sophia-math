#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of the Graph of $f(x) = x^4$]
#v(40pt)

#only("1")[
#voiceover("Let's consider the function")
]

#only("2-")[#text()[$ f(x) = x^4 $]]
#only("2")[
#voiceover("f of x equals x to the power of four.")
]

#v(40pt)

#only("3-")[#text()[
What is the symmetry of the graph of $f(x) = x^4$?
]]
#only("3")[
#voiceover("What is the symmetry of the graph of f of x equals x to the power of four?")
]

#v(40pt)

#only("4-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y = x**4

plt.plot(x, y, label='$f(x) = x^4$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graph of $f(x) = x^4$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.show()

```,
width: 360pt),
)
]
]]
#only("4")[
#voiceover("Here is the graph of f of x equals x to the power of four.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Describe the symmetry of the graph of $f(x) = x^4$.", 
answerOptions: ("The graph of $f(x) = x^4$ is symmetric with respect to the $y$-axis. This is because $f(-x) = (-x)^4 = x^4 = f(x)$, which satisfies the condition for even functions.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)