#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
#v(40pt)
#only("1-")[What is a linear system of equations?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[b) Multiple linear equations with the same set of variables]#only("2-")[#text(fill:green)[b) Multiple linear equations with the same set of variables]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) Multiple linear equations with different variables]#only("3-")[#text(fill:red)[a) Multiple linear equations with different variables]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) A single linear equation]#only("4-")[#text(fill:red)[c) A single linear equation]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) A set of quadratic equations]#only("5-")[#text(fill:red)[d) A set of quadratic equations]]
#v(40pt)

#only("1")[#voiceover("Not quite, but don't worry. Here's the correct solution.")]
// Very briefly Talk about b and why it is correct
#only("2")[#voiceover("b) Multiple linear equations with the same set of variables is the right answer. A linear system indeed consists of several linear equations that share the same variables.")]
// Very briefly Talk about a and why it is incorrect
#only("3")[#voiceover("a) Multiple linear equations with different variables is incorrect. In a linear system, the equations must have the same variables.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) A single linear equation is also incorrect. A system requires multiple equations, not just one.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) A set of quadratic equations is incorrect as well. Linear systems specifically consist of linear equations, not quadratic ones.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Here's an example of a linear system:
- $x + y = 5$
- $2x - y = 3$]
#v(20pt)
#only("2-")[📝 Both equations are linear]
#v(10pt)
#only("3-")[🔑 They share the same variables $x$ and $y$]
#v(10pt)
#only("4-")[👉 Together, they form a linear system]

#only("1")[#voiceover("Let's look at an example to illustrate a linear system of equations.")]
#only("2")[#voiceover("First, note that both equations, x plus y equals 5 and 2x minus y equals 3, are linear.")]
#only("3")[#voiceover("Second, observe that they share the same variables, namely x and y.")]
#only("4")[#voiceover("Together, these two linear equations with the same variables form a linear system of equations. Remember, these are the key characteristics of a linear system.")]
]