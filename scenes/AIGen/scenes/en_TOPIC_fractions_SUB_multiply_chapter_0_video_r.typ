#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap: Multiplying Fractions]
#v(40pt)
#only("1-")[
#align(center)[
#text(size: 24pt)[🥧 Pie Party Recap! 🎉]
 ]
 ]
#only("2-")[
#align(center)[
$4 dot 1/5$ pie 🥧
 ]
 ]
#only("3-")[
#text(size: 20pt)[Steps:]
#v(10pt)
 - Multiply whole number by numerator
#v(10pt)
 - Keep denominator the same
 ]
#only("4-")[
#align(center)[
$4 dot 1/5 = (4 dot 1)/5 = 4/5$
 ]
 ]
#only("5-")[
#align(center)[
#text(size: 24pt)[4/5 of a pie 🥧🥧🥧🥧]
 ]
 ]
#only("1")[
#voiceover("As we recap our lesson on multiplying fractions, imagine you're having a pie party and need to figure out how much pie you'll need.")
 ]
#only("2")[
#voiceover("Let's say you want to give each of your 4 friends one-fifth of a pie. How much pie is that in total? We can express this mathematically as 4 times one-fifth.")
 ]
#only("3")[
#voiceover("To multiply a whole number by a fraction, we follow two simple steps. First, we multiply the whole number by the numerator of the fraction. Then, we keep the denominator of the fraction the same.")
 ]
#only("4")[
#voiceover("Let's apply these steps to our pie problem. We have 4 times one-fifth. We multiply 4 by 1, which gives us 4, and we keep the denominator 5. So, 4 times one-fifth equals four-fifths.")
 ]
#only("5")[
#voiceover("This means you'll need four-fifths of a pie for your friends. Isn't it amazing how fractions can help us solve real-life problems?")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Multiplication: 4 $dot$ 1/5]
#v(40pt)
#only("1-")[
#box()[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import matplotlib.patches as patches 
def draw_circle(ax, fraction, color='orange', edge_color='black'): 
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5) 
 ax.add_patch(circle) 
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5) 
 ax.add_patch(wedge) 
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5)) 
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5)) 
 ax.set_aspect('equal') 
 ax.axis('off') 
fig, axs = plt.subplots(1, 4, figsize=(12, 3)) 
# Top row: 4 circles, each 1/5 filled 
for ax in axs: 
 draw_circle(ax, 1/5) 
 ax.text(0.5, -0.1, '1/5', ha='center', va='center', fontsize=12) 
plt.tight_layout() 
plt.show() 
```, 
width: 360pt), 
) 
] 
] 
#only("2-")[
$ #sym.arrow.b $
]
#only("3-")[
#align(center)[
#box()[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import matplotlib.patches as patches 
def draw_circle(ax, fraction, color='orange', edge_color='black'): 
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5) 
 ax.add_patch(circle) 
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5) 
 ax.add_patch(wedge) 
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5)) 
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5)) 
 ax.set_aspect('equal') 
 ax.axis('off') 
fig, ax = plt.subplots(figsize=(3, 3)) 
# Bottom row: 1 circle 4/5 filled 
draw_circle(ax, 4/5) 
ax.text(0.5, -0.1, '4/5', ha='center', va='center', fontsize=12) 
plt.tight_layout() 
plt.show() 
```, 
width: 130pt), 
) 
]] 
] 
#only("1")[
#voiceover("Let's visualize what happens when we multiply 4 by 1/5. Here we have four circles, each representing one whole. In each circle, we've shaded 1/5 or one-fifth.") 
 ] 
#only("2")[
#voiceover("When we multiply 4 by 1/5, we're essentially combining these four one-fifth portions.") 
 ] 
#only("3")[
#voiceover("The result is shown in this single circle. As you can see, when we combine four one-fifth portions, we end up with four-fifths of a whole, or 4/5. This visual representation helps us understand why 4 times 1/5 equals 4/5.") 
 ] 
]

#slide()[
#text(size: 30pt, weight: "bold")[The General Rule]
#v(40pt)
#only("1-")[
#align(center)[
$a dot b/c = (a dot b)/c$
 ]
 ]
#only("2-")[
#text(size: 20pt)[Where:]
#v(10pt)
 - $a$ is a whole number
#v(10pt)
 - $b/c$ is a fraction
 ]
#only("3-")[
#align(center)[
#text(size: 24pt)[Remember: Multiply numerator, keep denominator]
 ]
 ]
#only("1")[
#voiceover("Now, let's look at the general rule for multiplying a whole number by a fraction.")
 ]
#only("2")[
#voiceover("When we multiply a whole number 'a' by a fraction 'b over c', we get 'a times b' over 'c'. Here, 'a' is any whole number, and 'b over c' is any fraction.")
 ]
#only("3")[
#voiceover("The key is to remember: multiply the whole number by the numerator, and keep the denominator the same. This simple rule will help you solve many fraction multiplication problems!")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
 - Multiply whole number by numerator
 ]
#only("2-")[
 - Keep denominator the same
 ]
#only("3-")[
 - Formula: $a dot b/c = (a dot b)/c$
 ]
#only("4-")[
#align(center)[
#text(size: 24pt)[Practice makes perfect! 🏆]
 ]
 ]
#only("1")[
#voiceover("Let's recap what we've learned. When multiplying a whole number by a fraction, first, we multiply the whole number by the numerator of the fraction.")
 ]
#only("2")[
#voiceover("Second, we keep the denominator of the fraction the same.")
 ]
#only("3")[
#voiceover("We can express this as a formula: 'a' times 'b over c' equals 'a times b' over 'c'.")
 ]
#only("4")[
#voiceover("Remember, practice is key to mastering this concept. Try applying this rule to different problems, and soon you'll be a fraction multiplication expert!")
 ]
]