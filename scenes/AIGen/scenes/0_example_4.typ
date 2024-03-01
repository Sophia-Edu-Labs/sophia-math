#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Hello my friends, this is your Homeboy Barack! Let's practice how to compute the derivative of a function..")
]
Compute the derivative of
#v(40pt)
#only("2-")[#text()[$ f(x) = e^(x^2) - x $]]
#only("2")[
  #voiceover("We'll be looking at the function f of x equals e to the power of x squared minus x.")
]
]

#slide()[
#only("1")[
  #voiceover("To compute the derivative, we'll use the chain rule on e to the power of x squared.")
]
#only("2")[
  #voiceover("And the basic rules for derivatives for x. Now let's get into it!")
]
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
    #only("1-")[- Chain Rule für $e^(x^2)$]
    #only("2-")[- Basic Rules für $-x$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step solution]
#v(40pt)
#only("1-")[$f(x) = e^(x^2) - x$]
#only("1")[#voiceover("So we'll start with the function f of x equals e to the power of x squared.")]
#v(10pt)
#only("2")[#voiceover("As I said, we'll use the chain rule to compute this derivative.")]
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("3")[#voiceover("So the chain rule says that we first have to compute the derivative of the outer function, and then multiply it with the derivative of the inner function. The derivative of the exponential function is the exponential function. So we get e to the power of x squared times the derivative of x squared, which is two x. So we get 2x times e to the power of x squared.")]  
#v(10pt)
#only("4-")[$f'(x) = 2x dot e^(x^2) - 1$]
#only("4")[#voiceover("And the derivative of negative x is negative one. So we get the final result: f prime of x equals 2x times e to the power of x squared minus one.")]
]
#v(10pt)
#only("5")[#voiceover("That's it from my side. Thanks for listening you kings and queens. Don't forget to follow swipemath and now it's your turn to practice!")
]
