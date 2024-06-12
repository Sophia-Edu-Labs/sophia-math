The Chapter Name is : Practicing Power Functions (Set 3)
I want you to create a Typst Slideshow, that is coupled with a voiceover. It will be turned into a short-video, that I will integrate into an education app.


The slides contain visual elements like equations, graphs, bullet points with small amounts of text and Emoji, and more. Furthermore, there are voiceovers explaining concepts and guiding through the video.
Each slide is structured with the #only(a)[] or #only(a-b)[] syntax. This means that whatever is in the [] brackets is only shown on subslide a or from subslide a to subslide b.
The voiceover is always only shown on one slide (e.g. #only(2)[#voiceover(...)]), and it corresponds the visual elements that are introduced on the same subslide (e.g. #only(2-)[#text(size: 30pt, weight: "bold")[Example Heading]]).
Most of the time, there are many subslides for one slide and there is an individual voiceover for each of them. Here is an example of a slide:

#slide()[
#text(size: 30pt, weight: "bold")[Summary] //Visual Element visible on all subslides
#v(40pt) //some vertical space
// First visual element visible from subslide 1 to the end
#only("1-")[- Matrix: rectangular array of numbers 📜]
#v(20pt) //some vertical space
// Second visual element visible from subslide 2 to the end
#only("2-")[- Column vectors: columns of the matrix ↕]
#v(20pt) //some vertical space
// Third visual element visible from subslide 3 to the end
#only("3-")[- Linear combination: weighted sum of vectors 🧮]
#v(20pt)//some vertical space
// Fourth visual element visible from subslide 4 to the end
#only("4-")[- Column space: set of all linear combinations of column vectors 🌌]
// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("To summarize, a matrix is a rectangular array of numbers.")
]
// Second voiceover read out on subslide 2 only
#only("2")[
#voiceover("The columns of a matrix can be viewed as column vectors.")
]
// Third voiceover read out on subslide 3 only
#only("3")[
#voiceover("A linear combination is a weighted sum of vectors.")
]
// Fourth voiceover read out on subslide 4 only
#only("4")[
#voiceover("And the column space of a matrix is the set of all possible linear combinations of its column vectors.")
]
]

You can see that each of the four voiceover is on one subslide only, while the visual elements are introduced in one subslide and then stay.
You can also do more complex slides with multiple visual elements that you show at different subslides. Here is an example of that:

#slide()[
#text(size: 30pt, weight: "bold")[Domain]
#v(40pt)
#align(center)[#only("-1, 8-")[$g(x) = sqrt(x-1) + 1/(x-2)$]#only("2-4")[$g(x) = $#text(fill: red)[$sqrt(x-1)$]$ + 1/(x-2)$]#only("5-7")[$g(x) = sqrt(x-1) + $#text(fill: red)[$1/(x-2)$]]]
// On slide 1 and after slide 8, the full function is shown in black. On slides 2-4, the sqrt part is highlighted red. On slides 5-7, the 1/(x-2) part is highlighted red.
#only("1")[#voiceover("First, the square root. ")]
#only("2")[#voiceover("The contents of the square root, i.e., x minus 1, cannot ")]
#only("3")[#voiceover("be negative. Otherwise, we would have the square root of a negative number. This means ")]
#only("4")[#voiceover("that x must be greater than or equal to 1.")]
#only("5")[#voiceover("Now to the fraction. ")]
#only("6")[#voiceover("The denominator cannot be 0. This means ")]
#only("7")[#voiceover("that x cannot be equal to 2.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Radicand $≥0$]]]
// The condition for the radicand is shown in aqua from slide 3 onward
#v(10pt)
#only("4-")[#align(center)[#text()[$x≥1$]]]
// The implied domain restriction from the radicand is shown from slide 4 onward
#v(10pt)
#only("6-")[#align(center)[#text(fill:aqua)[⇓ Denominator $≠0$]]]
// The condition for the denominator is shown in aqua from slide 6 onward
#v(10pt)
#only("7-")[#align(center)[#text()[$x≠2$]]
// The implied domain restriction from the denominator is shown from slide 7 onward
]
#v(10pt)
#only("8-")[#align(center)[#text(fill:aqua)[⇓ Combine]]]
// The instruction to combine the restrictions is shown in aqua from slide 8 onward
#only("8")[#voiceover("So we combine these observation and see that the domain of g is: ")]
#only("9-")[#text()[$ D = {x ∈ RR | x ≥ 1, x ≠ 2}$]]
// The final domain in set builder notation is shown from slide 9 onward
#only("1")[#voiceover("x is a real number that is greater than or equal to 1 and not equal to 2.")]
]

So as a reminder: The #only() syntax shows, when visual elements and voiceover is shown. Make sure that everything corresponds. For example, when you have visual elements A, B and C, and they correspond to voiceover a,b,c, the visual elements should be in #only("1-"), #only("2-"), #only("3-") and the voiceover in #only("1"), #only("2"), #only("3").

Here are some more things to keep in mind:

- Use unicode symbols and emoji whenever possible, to make it nicer to look at.
- Use the Typst Math notation, e.g. a/b instead of \frac{a}{b}, dif ix instead of dx, () instead of {}, sin instead of \sin, dot instead of \cdot or *, multilply with space ($c A$ insteaf of $cA$), use () instead of {} ((x_(ij) instead of x_{ij}) matrices are written as mat(1, 2; 2,1) and so on, not with pmat and vecors are written as mat(1;2;3), the infinity sign just as $infinity$, $<=$ instead of $\leq$, $root(3,27)$ instead of $\sqrt[3]{27}$, $arrow$ instead of $\rightarrow$. If there is text within math mode, just put " around it. For example, $"dim"(x)$. No need to escape curly brackets (${$ instead of $\{$) and so on... If you use the dollar sign for the currency, use \$. If there is mathematical notation, it should always be surrounded by $ signs. eg. consider the sequence $a_n=(1,2,3,...)$. Make sure to surround the whole sequence, e.g. $a=f(x)-g(x)$ instead of a=$f(x)-g(x)$.
- If the math your showing is important and stands for itself, add a space after the first and before the last $.
- Always make sure to read out all the formulas in the voiceover in natural language, e.g. say #voiceover("f of x equals x squared") instead of #voiceover("$f(x)=x^2$") or say #voiceover("the vectors zero, one and one, zero create a basis for R 2.") instead of #voiceover("the vectors (0,1) and (1,0) create a basis for R2.")

The slideshow that I want you to create is part of the chapter "Practicing Power Functions (Set 3)" and the content of the video is the question "6) Exercise 3 (FREE): Describe the end behavior of $f(x) = x^2$ as $x$ approaches negative infinity."

The type of video that I want you to create is a question video. That means:
Briefly ask the question at hand. The title of the slide should indicate the topic of the specific question - not the chapter, not the question, nor the question number.

Make sure to that you only pose the question. Do NOT provide the answer!!!

The voiceover for each slide should briefly mention the topic of the slide, and then slowly go over all the subpoints of the slide, before transitioning to the next slide. It should provide thorough and good explanations.
For reference, here are examples for posing a Free Question:
Example 1:
#slide()[

#only("1")[
#voiceover("Let's consider the function")
]

#text(size: 30pt, weight: "bold")[Derivative of the function]
// The title "Derivative of the function" is shown on all slides

#v(40pt)

#only("2-")[#text()[$ f(x) = 0.5x^4 - 2x^2 + 3x $]]
// The function f(x) is shown from slide 2 onward

#v(40pt)

#only("3-")[What is the derivative $f'(x)$?]
// The question "What is the derivative f'(x)?" is shown from slide 3 onward

#only("3")[
#voiceover("f of x equals zero point five x to the power of four minus two times x squared plus three times x.")
]

#only("2")[
#voiceover("What is the derivative f prime of the function f?")
]

]

This were the examples for posing a Free Question. And again, only briefly pose the question. Do NOT provide the answer, or give additional hints! Most likely, this will only require one slide.

- It should be a 1-Minute Video
- Explain everything inside the voiceover. Outside of it, use bullet points and be very very brief
- The #only() syntax shows, when visual elements and voiceover is shown. Make sure that everything corresponds. For example, when you have visual elements A, B and C, and they correspond to voiceover a,b,c, the visual elements should be in #only("1-"), #only("2-"), #only("3-") and the voiceover in #only("1"), #only("2"), #only("3")
- Try to use headings on each slide: #text(size: 30pt, weight: "bold")[Example Heading]
- Use plots if it makes sense. You can plot like this:
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
#add graph here. Wherever possible, add legend, explainers and more, to make the graph easier to understand.
plt.show()
```,
width: 360pt),
)
]
]
but the code for each plot must stand for itself.

Be brief outside of the voiceover, but explain everything very thoroughly in the voiceover. Be sure to give motivational examples, and try to spark the learners' curiosity. Explain everything in small steps, as if you were teaching it in front of a class, where it's important to make sure that everyone understands everything. Make sure to use unicode symbols and emoji wherever possible, to make it nicer to look at. Make sure to use the Typst Math notation, and to read out all the formulas in the voiceover in natural language. Pretend like the video is presented by a teacher in front of a class. That means: Don't talk about how something is written in Typst "the n-th root of a number is written as root(n, a)" but rather as it is written in class "we write the n-th root of a number as the n-th root of a, and we write the n on the top left of the root symbol and the number a on the bottom right side of the root symbol". Output all the slides in one single codebox and nothing else.