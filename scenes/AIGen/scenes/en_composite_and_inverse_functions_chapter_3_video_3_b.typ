#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Invertibility of the Function]

#v(40pt)

#only("2-")[#text()[$ f(x) = 3x + 2 $]]
// The function f(x) is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the function f of x equals three x plus two.")
]

]

#slide()[

#only("1")[
#voiceover("To determine if a function is invertible, we need to check if it is both injective (one-to-one) and surjective (onto).")
]

#only("2")[
#voiceover("A linear function is always injective if its slope is not zero, and it's always surjective. So let's check the slope.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Check injectivity (one-to-one) 🎯]
// The approach of checking injectivity is shown from slide 1 onward

#only("2-")[- Check surjectivity (onto) 🌍]
// The approach of checking surjectivity is shown from slide 2 onward

]

#slide()[

#text(size: 30pt, weight: "bold")[Injectivity]

#v(40pt)

#only("1-")[$ f(x) = 3x + 2 $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Slope of the function]]]

#v(10pt)

#only("3-")[$ m = 3 ≠ 0 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:green)[✅ Injective]]]

#only("1")[#voiceover("We start with the function f of x equals three x plus two.")]

#only("2")[#voiceover("To check injectivity, we look at the slope of the function.")]

#only("3")[#voiceover("The slope is three, which is not equal to zero.")]

#only("4")[#voiceover("Therefore, the function is injective.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Surjectivity]

#v(40pt)

#only("1-")[$ f(x) = 3x + 2 $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Linear function]]]

#v(10pt)

#only("3-")[#align(center)[#text()[All linear functions are surjective 📈]]]

#v(10pt)

#only("4-")[#align(center)[#text(fill:green)[✅ Surjective]]]

#only("1")[#voiceover("Again, we consider the function f of x equals three x plus two.")]

#only("2")[#voiceover("We note that this is a linear function.")]

#only("3")[#voiceover("All linear functions are surjective, as they cover the entire codomain.")]

#only("4")[#voiceover("Therefore, the function is surjective.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Invertibility]

#v(40pt)

#only("1-")[#align(center)[#text()[f is injective ✅]]]

#v(10pt)

#only("2-")[#align(center)[#text()[f is surjective ✅]]]

#v(10pt)

#only("3-")[#align(center)[#text(fill:green)[⇒ f is invertible 🎉]]]

#only("1")[#voiceover("We have shown that the function f is injective.")]

#only("2")[#voiceover("We have also shown that the function f is surjective.")]

#only("3")[#voiceover("Since the function is both injective and surjective, we can conclude that it is invertible.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Finding the Inverse]

#v(40pt)

#only("1-")[$ y = 3x + 2 $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Swap x and y]]]

#v(10pt)

#only("3-")[$ x = 3y + 2 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Solve for y]]]

#v(10pt)

#only("5-")[$ x - 2 = 3y $]

#v(10pt)

#only("6-")[$ (x - 2) / 3 = y $]

#v(10pt)

#only("7-")[$ y = (x - 2) / 3 $]

#v(10pt)

#only("8-")[$ f^(-1)(x) = (x - 2) / 3 $]

#only("1")[#voiceover("To find the inverse of the function f of x equals three x plus two, we start by setting it equal to y.")]

#only("2")[#voiceover("The first step in finding the inverse is to swap x and y.")]

#only("3")[#voiceover("After swapping, we have x equals three y plus two.")]

#only("4")[#voiceover("Now, we need to solve this equation for y.")]

#only("5")[#voiceover("First, we subtract two from both sides, giving us x minus two equals three y.")]

#only("6")[#voiceover("Then, we divide both sides by three, giving us x minus two divided by three equals y.")]

#only("7")[#voiceover("Finally, we rearrange to get y equals x minus two divided by three.")]

#only("8")[#voiceover("This is the inverse function, which we denote as f inverse of x equals x minus two divided by three.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- $f(x) = 3x + 2$ is invertible 🔄]
// The invertibility of f is restated from slide 1 onward

#v(20pt)

#only("2-")[- $f^(-1)(x) = (x - 2) / 3$ 🔍]
// The inverse function is restated from slide 2 onward

#only("1")[#voiceover("In summary, we have shown that the function f of x equals three x plus two is invertible.")]

#only("2")[#voiceover("And we have found its inverse function, f inverse of x equals x minus two divided by three.")]

]