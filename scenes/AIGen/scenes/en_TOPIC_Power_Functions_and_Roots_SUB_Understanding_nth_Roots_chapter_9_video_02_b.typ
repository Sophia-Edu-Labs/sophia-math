#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots]
#v(40pt)
The n-th root of a number is a value that, when raised to the power of n, gives the \_\_\_\_\_. 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) root]#only("2-")[#text(fill:red)[a) root]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) original number]#only("3-")[#text(fill:green)[b) original number]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) square]#only("4-")[#text(fill:red)[c) square]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) cube]#only("5-")[#text(fill:red)[d) cube]]

#only("1")[#voiceover("Great job, that's absolutely correct!")]
#only("2")[#voiceover("Option a), root, is incorrect. The n-th root is the value itself, not the original number.")]
#only("3")[#voiceover("Option b), original number, is the correct answer. When you raise the n-th root to the power of n, you get back the original number.")]
#only("4")[#voiceover("Option c), square, is incorrect. This would only be true for the specific case where n equals 2, i.e., for square roots.")]
#only("5")[#voiceover("And option d), cube, is also incorrect. This would only apply when n equals 3, i.e., for cube roots.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Let's look at an example to illustrate this concept.
#v(40pt)
#only("1-")[Consider the number 64 and its 3rd root.]
#v(20pt)
#only("2-")[The 3rd root of 64 is 4, because $4^3 = 64$.]
#v(20pt)
#only("3-")[In notation: $root(3, 64) = 4$]

#only("1")[#voiceover("Consider the number 64 and its 3rd root.")]
#only("2")[#voiceover("The 3rd root of 64 is 4, because when you cube 4, that is, raise it to the power of 3, you get 64.")]
#only("3")[#voiceover("In mathematical notation, we write this as the 3rd root of 64 equals 4.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^3$')
plt.scatter([4], [64], color='red', s=100, label='(4, 64)')
plt.grid(True)
plt.legend(fontsize=14)
plt.xlabel('x', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)
plt.title('Cube Function', fontsize=16)
plt.annotate('$root(3, 64) = 4$', xy=(4, 64), xytext=(4.1, 40), 
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14)

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1")[#voiceover("Here's a graph of the cube function, $f(x) = x^3$. The red point at (4, 64) illustrates that the 3rd root of 64 is 4.")]
#only("2")[#voiceover("This is because if you input 4 into the cube function, you get an output of 64.")]
#only("3")[#voiceover("In other words, 4 cubed equals 64, so the 3rd root of 64 is 4.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
- The n-th root is the inverse operation to raising to the power of n.
#v(20pt)
- When you raise the n-th root of a number to the power of n, you get back the original number.
#v(20pt)
- Example: $root(3, 64) = 4$ because $4^3 = 64$.

#only("1")[#voiceover("To summarize, the n-th root is the inverse operation to raising a number to the power of n.")]
#only("2")[#voiceover("When you raise the n-th root of a number to the power of n, you always get back the original number.")]
#only("3")[#voiceover("For example, the 3rd root of 64 is 4, because when you cube 4, you get 64.")]
#only("4")[#voiceover("I hope this explanation helped clarify the concept of n-th roots. Keep up the great work!")]
]