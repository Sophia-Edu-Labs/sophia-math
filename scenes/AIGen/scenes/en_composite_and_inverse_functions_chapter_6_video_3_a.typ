#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's absolutely correct. Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Finding the Inverse]

#v(40pt)

#only("2-")[$ f(x) = x^3 $]
// The function f(x) is shown from slide 2 onward

#only("2")[
#voiceover("So we're considering the function f of x equals x cubed.")
]

]

#slide()[

#only("1")[
#voiceover("To find the inverse function, we swap x and y, and then solve for y. So let's get started.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Swap x and y]
// The approach of swapping x and y is shown from slide 1 onward

#only("2-")[- Solve for y]
// The approach of solving for y is shown from slide 2 onward

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution steps]

#v(40pt)

#only("1-")[$ y = x^3 $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Swap x and y]]]

#v(10pt)

#only("3-")[$ x = y^3 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Solve for y]]]

#v(10pt)

#only("5-")[$ y = root(3, x) $]

#only("1")[#voiceover("We start with the equation y equals x cubed.")]

#only("2")[#voiceover("First, we swap x and y to get x equals y cubed.")]

#only("3")[#voiceover("Now we have x equals y cubed.")]

#only("4")[#voiceover("Next, we solve for y. To do this, we take the cube root of both sides.")]

#only("5")[#voiceover("So, y equals the cube root of x. This is our inverse function, which we can write as f inverse of x equals the cube root of x.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Domain and Range]

#v(40pt)

#only("1-")[- Domain of $f^(-1)(x)$: All real numbers]
// The domain of the inverse function is shown from slide 1 onward

#only("2-")[- Range of $f^(-1)(x)$: All real numbers]
// The range of the inverse function is shown from slide 2 onward

#only("1")[#voiceover("Now, let's consider the domain and range of this inverse function. The cube root is defined for all real numbers, so the domain of f inverse is all real numbers.")]

#only("2")[#voiceover("Similarly, the cube root can produce any real number, so the range of f inverse is also all real numbers.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Inverse function: $f^(-1)(x) = root(3, x)$ 🎓]
// The inverse function is summarized from slide 1 onward

#only("2-")[- Domain: All real numbers ℝ]
// The domain is summarized from slide 2 onward

#only("3-")[- Range: All real numbers ℝ]
// The range is summarized from slide 3 onward

#only("1")[#voiceover("To summarize, the inverse of the function f of x equals x cubed is the function f inverse of x equals the cube root of x.")]

#only("2")[#voiceover("The domain of this inverse function is all real numbers.")]

#only("3")[#voiceover("And the range of this inverse function is also all real numbers.")]

]