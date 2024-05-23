#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifying Inverse Functions]
#v(40pt)
If $f(x)$ and $g(x)$ are inverses, what should $f(g(x))$ and $g(f(x))$ equal?
#v(40pt)
#only("-1")[a) $f(x)$]#only("2-")[#text(fill:red)[a) $f(x)$]]
#v(10pt)
#only("-2")[b) $g(x)$]#only("3-")[#text(fill:red)[b) $g(x)$]]
#v(10pt)
#only("-3")[c) $x$]#only("4-")[#text(fill:green)[c) $x$]]
#v(10pt)
#only("-4")[d) $0$]#only("5-")[#text(fill:red)[d) $0$]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) $f(x)$ is incorrect. If $f(x)$ and $g(x)$ are inverses, their composition should not result in one of the original functions.")]
#only("3")[#voiceover("Option b) $g(x)$ is also incorrect for the same reason. The composition of inverse functions doesn't yield one of the original functions.")]
#only("4")[#voiceover("Option c) $x$ is correct! When you compose a function with its inverse, you get the identity function, which is just $x$.")]
#only("5")[#voiceover("Option d) $0$ is incorrect. The composition of a function with its inverse doesn't result in a constant value like 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
Let's understand why $f(g(x)) = g(f(x)) = x$ if $f$ and $g$ are inverses.
#v(40pt)
#only("1-")[Step 1: Consider arbitrary elements 🔍]
#v(10pt)
#only("2-")[- Let $a$ be an element in the domain of $f$.]
#only("3-")[- Let $b$ be an element in the domain of $g$.]
#only("4-")[- Assume $f(a) = b$ and $g(b) = a$.]
#v(40pt)
#only("5-")[Step 2: Compose functions 🧩]
#v(10pt)
#only("6-")[- $f(g(b)) = f(a)$ (since $g(b) = a$)]
#only("7-")[- $f(a) = b$ (given)]
#only("8-")[- So, $f(g(b)) = b$]
#only("1")[#voiceover("Let's go through a step-by-step solution to understand why the composition of a function with its inverse yields the identity function.")]
#only("2")[#voiceover("First, we consider arbitrary elements. Let $a$ be an element in the domain of $f$.")]
#only("3")[#voiceover("And let $b$ be an element in the domain of $g$.")]
#only("4")[#voiceover("We assume that $f(a)$ equals $b$ and $g(b)$ equals $a$. This is what it means for $f$ and $g$ to be inverses.")]
#only("5")[#voiceover("Next, we compose the functions.")]
#only("6")[#voiceover("$f(g(b))$ equals $f(a)$, since $g(b)$ equals $a$ by our assumption.")]
#only("7")[#voiceover("And we're given that $f(a)$ equals $b$.")]
#only("8")[#voiceover("So, $f(g(b))$ equals $b$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 2: Compose functions 🧩 (continued)]
#v(10pt)
#only("1-")[- Similarly, $g(f(a)) = g(b) = a$]
#v(40pt)
#only("2-")[Step 3: Generalize 🌐]
#v(10pt)
#only("3-")[- Since $a$ and $b$ were arbitrary, this holds for all elements in the domains of $f$ and $g$.]
#only("4-")[- Therefore, $f(g(x)) = x$ for all $x$ in the domain of $g$, and $g(f(x)) = x$ for all $x$ in the domain of $f$.]
#only("1")[#voiceover("Similarly, $g(f(a))$ equals $g(b)$, which equals $a$ by our assumption.")]
#only("2")[#voiceover("Finally, we generalize.")]
#only("3")[#voiceover("Since $a$ and $b$ were arbitrary elements, this relationship holds for all elements in the domains of $f$ and $g$.")]
#only("4")[#voiceover("Therefore, $f(g(x))$ equals $x$ for all $x$ in the domain of $g$, and $g(f(x))$ equals $x$ for all $x$ in the domain of $f$. This is the definition of the identity function.")]
]