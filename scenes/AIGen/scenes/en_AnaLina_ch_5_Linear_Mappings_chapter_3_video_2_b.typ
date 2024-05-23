#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Image of a Linear Mapping]
#v(40pt)
The image of a linear mapping $T$ is the set of all vectors $w$ such that:
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $w = T(v)$ for some $v$ in $V$]#only("2-")[#text(fill:green)[a) $w = T(v)$ for some $v$ in $V$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $w = v$ for some $v$ in $V$]#only("3-")[#text(fill:red)[b) $w = v$ for some $v$ in $V$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $w = 0$]#only("4-")[#text(fill:red)[c) $w = 0$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $w = -T(v)$ for some $v$ in $V$]#only("5-")[#text(fill:red)[d) $w = -T(v)$ for some $v$ in $V$]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution...")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) $w = T(v)$ for some $v$ in $V$. The image of a linear mapping $T$ is indeed the set of all vectors $w$ that can be obtained by applying $T$ to some vector $v$ in the domain $V$.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) $w = v$ for some $v$ in $V$ is incorrect. This would mean that the image is the same as the domain, which is not necessarily true for a linear mapping.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) $w = 0$ is also incorrect. While the zero vector might be part of the image, it's not the only element. The image can contain many other vectors.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) $w = -T(v)$ for some $v$ in $V$ is incorrect as well. This would mean that the image consists of the negatives of the mapped vectors, which is not the definition of the image.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)

Let's consider an example:

Suppose $T: RR^2 -> RR^2$ is defined by $T(mat(x; y)) = mat(x + y; x - y)$.

#v(20pt)
#only("1-")[What is the image of $T$? 🤔]

#v(20pt)
#only("2-")[Let $mat(a; b)$ be any vector in $RR^2$. We need to find $mat(x; y)$ such that $T(mat(x; y)) = mat(a; b)$.]

#v(20pt)
#only("3-")[
$T(mat(x; y)) = mat(a; b)$
$mat(x + y; x - y) = mat(a; b)$
]

#only("1")[#voiceover("Let's consider an example to understand the image better. Suppose $T$ is a linear mapping from $RR^2$ to $RR^2$ defined by $T$ of the vector $x, y$ equals the vector $x plus y, x minus y$.")]
#only("2")[#voiceover("To find the image of $T$, let's take an arbitrary vector $a, b$ in $RR^2$. We need to find a vector $x, y$ such that $T$ of $x, y$ equals $a, b$.")]
#only("3")[#voiceover("This means that $x plus y, x minus y$ must equal $a, b$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example (cont.)]
#v(40pt)

#only("1-")[Solving this system of equations:
- $x + y = a$
- $x - y = b$
]

#v(20pt)
#only("2-")[
We get:
- $x = (a + b) / 2$
- $y = (a - b) / 2$
]

#v(20pt)
#only("3-")[So for any $mat(a; b)$ in $RR^2$, there exists $mat(x; y)$ such that $T(mat(x; y)) = mat(a; b)$.]

#v(20pt)
#only("4-")[Therefore, the image of $T$ is the entire $RR^2$. 🌍]

#only("1")[#voiceover("We can solve this system of equations. The first equation is $x plus y equals a$, and the second equation is $x minus y equals b$.")]
#only("2")[#voiceover("Solving this, we get $x equals a plus b over 2$, and $y equals a minus b over 2$.")]
#only("3")[#voiceover("This shows that for any vector $a, b$ in $RR^2$, we can find a vector $x, y$ such that $T$ of $x, y$ equals $a, b$.")]
#only("4")[#voiceover("Therefore, the image of $T$ is the entire $RR^2$. Every vector in $RR^2$ is in the image of $T$.")]
]