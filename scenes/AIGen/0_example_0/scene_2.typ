#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#slide()[
#voiceover("The task that we need to solve is computing the derivative of the function f of x equals x cubed ln of x minus one third x cubed.")
Compute the Derivative of
#v(40pt)
#text()[$ f(x) = x^3" ln"(x) - 1/3 x^3 $]
]

#slide()[
#voiceover("We will use the product rule and the power rule to solve this problem. Let's start with the product rule.")
#text(size: 20pt, weight: "bold")[Approach]
#v(40pt)

    - Product rule
    - Power rule
]


#slide()[
#text(size: 20pt, weight: "bold")[Step by Step Solution]
#v(40pt)
#only("1-")[#only(1)[$f(x) = x^3"ln(x)" - 1/3x^3$]#only(2)[$f(x) = $#box(fill: aqua)[$x^3"ln(x)"$]$- 1/3x^3$]#only((beginning: 3))[$f(x) = x^3"ln(x)" - 1/3x^3$]]
#voiceover("First, we apply the product rule to the function f of x equals x cubed ln of x minus one third x cubed. The product rule states that the derivative of a product of two functions is the derivative of the first function times the second function plus the first function times the derivative of the second function. In our case, the first function is x cubed and the second function is ln of x. The derivative of x cubed is three x squared and the derivative of ln of x is one over x. So, the derivative of x cubed ln of x is three x squared ln of x plus x squared over x. This simplifies to three x squared ln of x plus x squared.")
#v(10pt)
#only("2-")[#align(center)[#text(size: 16pt, fill:aqua)[⇓ Product Rule]]]
#voiceover("Now, we apply the power rule to the function f of x equals x cubed ln of x minus one third x cubed. The power rule states that the derivative of x to the power of n is n times x to the power of n minus one. In our case, the derivative of x cubed is three x squared and the derivative of one third x cubed is one times x squared. This simplifies to three x squared minus x squared.")
#v(10pt)
#only("3-")[$f'(x) = 3x^2"ln(x)" + x^2 - x^2$]
#voiceover("Finally, we simplify the derivative of f of x to three x squared ln of x plus x squared minus x squared. This simplifies to three x squared ln of x.")
#v(10pt)
#only("4-")[#align(center)[#text(size: 16pt, fill:aqua)[⇓ Simplify]]
#voiceover("So, the derivative of f of x equals x cubed ln of x minus one third x cubed is three x squared ln of x.")
#v(10pt)
#only("5-")[$f'(x) = 3x^2"ln(x)"$]
]
]
