#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the main points about integrals of power functions.")
]
#text(size: 30pt, weight: "bold")[Integrals of Power Functions 📜]
// The title "Integrals of Power Functions" with a scroll emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The integral of a power function f of x equals x to the power of n is equal to x to the power of n plus 1 divided by n plus 1, plus a constant C.")
]
#only("2-")[
$ integral x^n dif x = (x^(n+1))/(n+1) + C$
// The integral formula is shown from slide 2 onward
]

#only("3")[
#voiceover("This formula holds for all values of n except negative 1. When n equals negative 1, we have a special case that leads to the natural logarithm.")
]
#only("3-")[
for $n != -1$ ❗
// The condition for n is shown from slide 3 onward
]

#only("4")[
#voiceover("Let's look at an example. Consider the integral of x squared. Using our formula, we increase the power by 1, so we get x cubed, and then divide by the new power, which is 3. So the integral of x squared is one third x cubed plus C.")
]
#only("4-")[
Example: $integral x^2 dif x = (x^3)/3 + C$
// An example of integrating x^2 is shown from slide 4 onward
]

#only("5")[
#voiceover("Remember to always include the constant of integration C, as there are infinitely many antiderivatives that differ by a constant.")
]
#only("5-")[
Don't forget the constant C! 🧮
// A reminder about the constant of integration is shown from slide 5 onward
]
]

#slide()[
#only("1")[
#voiceover("That's the key points about integrals of power functions. Remember the formula, watch out for the case when n equals negative 1, and always include the constant of integration. Happy calculating!")
]
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
// The title "Key Takeaways" with a key emoji is shown on this slide
#v(40pt)
#only("1-")[
- Formula: $integral x^n dif x = (x^(n+1))/(n+1) + C$
- Exception: $n != -1$
- Always include constant C
]
// The key takeaways are listed on this slide
]