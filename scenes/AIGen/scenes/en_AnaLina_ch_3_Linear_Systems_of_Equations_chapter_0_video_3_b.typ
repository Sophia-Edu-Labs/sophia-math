#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
#v(40pt)
Which of the following is an example of a linear system of equations?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $x + y = 2$, $2x - y = 3$]#only("2-")[#text(fill:green)[a) $x + y = 2$, $2x - y = 3$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $x^2 + y^2 = 4$, $x - y = 1$]#only("3-")[#text(fill:red)[b) $x^2 + y^2 = 4$, $x - y = 1$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $x + y = 2$]#only("4-")[#text(fill:red)[c) $x + y = 2$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $x^2 + y = 3$]#only("5-")[#text(fill:red)[d) $x^2 + y = 3$]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("Option a) $x + y = 2$, $2x - y = 3$ is indeed a linear system of equations. It consists of two linear equations with the same set of variables, x and y.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("Option b) $x^2 + y^2 = 4$, $x - y = 1$ is not a linear system because the first equation is quadratic, not linear.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) $x + y = 2$ is a single linear equation, not a system of equations.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And option d) $x^2 + y = 3$ is not linear due to the term $x^2$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
#v(40pt)
#only("1-")[Let's look at why option a) is correct:]
#v(20pt)
#only("2-")[- It has #text(weight: "bold")[two equations]: $x + y = 2$ and $2x - y = 3$ ✅]
#only("3-")[- Both equations are #text(weight: "bold")[linear], i.e., the variables have power 1 ✅]
#only("4-")[- The equations have the #text(weight: "bold")[same set of variables]: x and y ✅]
#only("5-")[Therefore, option a) is a #text(weight: "bold", fill:green)[linear system of equations]. 🎉]

#only("1")[#voiceover("Let's break down why option a) is the correct answer.")]
#only("2")[#voiceover("First, it consists of two equations: x plus y equals 2, and 2x minus y equals 3.")]
#only("3")[#voiceover("Both of these equations are linear. This means that all variables, in this case x and y, are raised to the power of 1. There are no terms like x squared or y cubed.")]
#only("4")[#voiceover("Moreover, both equations have the same set of variables, namely x and y. This is crucial for a system of equations.")]
#only("5")[#voiceover("Since all these conditions are met, option a) indeed represents a linear system of equations. Well done for identifying this!")]
]