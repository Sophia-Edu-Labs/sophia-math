#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
#v(40pt)
When is a function continuous at a point?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) When the limit of the function as $x$ approaches the point is equal to the function's value at that point]#only("2-")[#text(fill:green)[a) When the limit of the function as $x$ approaches the point is equal to the function's value at that point]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) When the function is differentiable at that point]#only("3-")[#text(fill:red)[b) When the function is differentiable at that point]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) When the function is integrable at that point]#only("4-")[#text(fill:red)[c) When the function is integrable at that point]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) When the function is zero at that point]#only("5-")[#text(fill:red)[d) When the function is zero at that point]]
#v(40pt)

#only("1")[#voiceover("Great job! You selected the correct answer.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("Option a is indeed the correct definition of continuity at a point. A function $f$ is continuous at a point $c$ if the limit of $f(x)$ as $x$ approaches $c$ is equal to $f(c)$.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("Option b is incorrect. Differentiability at a point implies continuity at that point, but the converse is not true. A function can be continuous at a point without being differentiable there.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c is also incorrect. Integrability is a global property of a function over an interval, not a local property at a point. A function can be continuous at a point without being integrable over an interval containing that point.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And option d is incorrect as well. A function doesn't need to be zero at a point to be continuous there. It just needs to have a limit at that point that equals its value.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Continuity Conditions]
#v(40pt)
For a function $f$ to be continuous at a point $c$:
#v(20pt)
#only("1-")[1. $f(c)$ must be defined]
#only("2-")[2. $lim_(x -> c) f(x)$ must exist]
#only("3-")[3. $lim_(x -> c) f(x) = f(c)$]

#only("1")[#voiceover("Let's break this down step by step. For a function $f$ to be continuous at a point $c$, three conditions must be met.")]
#only("2")[#voiceover("First, $f(c)$ must be defined. That is, the function must have a value at the point $c$.")]
#only("3")[#voiceover("Second, the limit of $f(x)$ as $x$ approaches $c$ must exist. This means that the function must approach a single value as we get closer and closer to $c$ from both sides.")]
#only("4")[#voiceover("And third, the limit of $f(x)$ as $x$ approaches $c$ must be equal to $f(c)$. In other words, the value that the function approaches as we get close to $c$ must be the same as the function's value at $c$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Let's consider the function $f(x) = x^2$.
#v(20pt)
#only("1-")[Is $f$ continuous at $x = 1$? 🤔]
#v(20pt)
#only("2-")[1. $f(1) = 1^2 = 1$, so $f(1)$ is defined ✅]
#only("3-")[2. $lim_(x -> 1) x^2 = 1$, so the limit exists ✅]
#only("4-")[3. $lim_(x -> 1) x^2 = f(1) = 1$, so they are equal ✅]
#v(20pt)
#only("5-")[Therefore, $f(x) = x^2$ is continuous at $x = 1$. 🎉]

#only("1")[#voiceover("Now let's apply these conditions to an example. Consider the function $f(x) = x^2$. Is $f$ continuous at $x = 1$?")]
#only("2")[#voiceover("First, we check if $f(1)$ is defined. $f(1) = 1^2 = 1$, so $f(1)$ is indeed defined.")]
#only("3")[#voiceover("Next, we check if the limit of $f(x)$ as $x$ approaches 1 exists. Using the properties of limits, we can calculate that this limit is equal to 1. So the limit exists.")]
#only("4")[#voiceover("Finally, we check if the limit of $f(x)$ as $x$ approaches 1 is equal to $f(1)$. We just found that both of these values are 1, so they are equal.")]
#only("5")[#voiceover("Since all three conditions are met, we can conclude that $f(x) = x^2$ is continuous at $x = 1$. In fact, $f(x) = x^2$ is continuous at every real number, but that's a discussion for another time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
- Continuity at a point requires:
  1. Function value defined at the point
  2. Limit exists at the point
  3. Limit equals function value at the point
- Example: $f(x) = x^2$ is continuous at $x = 1$

#only("1")[#voiceover("To recap, for a function to be continuous at a point, three things must be true:")]
#only("2")[#voiceover("The function value must be defined at the point, the limit must exist at the point, and the limit must equal the function value at the point.")]
#only("3")[#voiceover("We saw an example of this with the function $f(x) = x^2$, which we showed is continuous at $x = 1$.")]
#only("4")[#voiceover("Understanding continuity is crucial in calculus and analysis. It's a fundamental property that allows us to study the behavior of functions and to apply powerful tools like the Intermediate Value Theorem and the Mean Value Theorem. Keep up the great work!")]
]