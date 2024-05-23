#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composing Functions]
#v(40pt)
If $f(x) = 2x$ and $g(x) = x + 3$, what is $f(g(x))$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $2(x + 3)$]#only("2-")[#text(fill:green)[a) $2(x + 3)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $2x + 3$]#only("3-")[#text(fill:red)[b) $2x + 3$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $2x + 6$]#only("4-")[#text(fill:red)[c) $2x + 6$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $2(x + 3) + 3$]#only("5-")[#text(fill:red)[d) $2(x + 3) + 3$]]
#v(40pt)
#only("1")[#voiceover("Excellent, that's the correct answer! Let's see why.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("Option a) $2(x + 3)$ is correct. When we compose $f$ and $g$, we substitute $g(x)$ for $x$ in the function $f$. So $f(g(x))$ becomes $f(x+3)$, which simplifies to $2(x+3)$.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("Option b) $2x + 3$ is incorrect. This would be the result if we added the functions $f$ and $g$, not if we composed them.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) $2x + 6$ is also incorrect. This would be the result if we multiplied $g(x)$ by 2 and then added it to $f(x)$.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And option d) $2(x + 3) + 3$ is incorrect as well. This would be the result if we applied $g$ to the result of $f(g(x))$, which is not what the question asks for.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $f(x) = 2x$ and $g(x) = x + 3$]
#v(20pt)
#only("2-")[Step 1: Substitute $g(x)$ for $x$ in $f(x)$]
#only("3-")[$ f(g(x)) = 2(g(x))$]
#v(20pt)
#only("4-")[Step 2: Expand $g(x)$]
#only("5-")[$ f(g(x)) = 2(x + 3)$]
#v(20pt)
#only("6-")[Step 3: Simplify]
#only("7-")[$ f(g(x)) = 2x + 6$]
#v(20pt)
#only("8-")[Therefore, $f(g(x)) = 2(x + 3)$ 🎉]

#only("1")[#voiceover("Let's solve this step by step. We are given that $f$ of $x$ equals $2x$ and $g$ of $x$ equals $x$ plus $3$.")]
#only("2")[#voiceover("In the first step, we substitute $g$ of $x$ for $x$ in the function $f$.")]
#only("3")[#voiceover("This gives us $f$ of $g$ of $x$ equals $2$ times $g$ of $x$.")]
#only("4")[#voiceover("Next, we expand $g$ of $x$.")]
#only("5")[#voiceover("$f$ of $g$ of $x$ equals $2$ times the quantity $x$ plus $3$.")]
#only("6")[#voiceover("Finally, we simplify.")]
#only("7")[#voiceover("$f$ of $g$ of $x$ equals $2x$ plus $6$.")]
#only("8")[#voiceover("Therefore, when $f$ of $x$ equals $2x$ and $g$ of $x$ equals $x$ plus $3$, $f$ of $g$ of $x$ equals $2$ times the quantity $x$ plus $3$. Great job!")]
]