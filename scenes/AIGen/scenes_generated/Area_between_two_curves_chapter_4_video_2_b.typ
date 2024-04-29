#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[NOT] a key step in finding the area between two curves?]
#v(40pt)
#only("-1")[a) Determining the boundaries of the region]#only("2-")[#text(fill:green)[a) Determining the boundaries of the region]]
#v(10pt)
#only("-2")[b) Setting up the integral with the appropriate order of functions]#only("3-")[#text(fill:green)[b) Setting up the integral with the appropriate order of functions]]
#v(10pt)
#only("-3")[c) Evaluating the integral using integration techniques]#only("4-")[
#text(fill:green)[c) Evaluating the integral using integration techniques]]
#v(10pt)
#only("-4")[d) Differentiating the functions to find their intersection points]#only("5-")[
#text(fill:red)[d) Differentiating the functions to find their intersection points]]

#only("1")[
#voiceover("That's not right. So we're asking: Which of the following is NOT a key step in finding the area between two curves?")
]
#only("2")[
#voiceover("Determining the boundaries of the region is a key step in finding the area between two curves. We need to know the limits of integration.")
]
#only("3")[
#voiceover("Setting up the integral with the appropriate order of functions is also a key step. We need to ensure that we're integrating the upper function minus the lower function.")
]
#only("4")[
#voiceover("Evaluating the integral using integration techniques is necessary to actually find the area. This is definitely a key step.")
]
#only("5")[
#voiceover("Differentiating the functions to find their intersection points is not a key step in finding the area between two curves. While the intersection points can help determine the boundaries, differentiation itself is not necessary. The correct answer is d).")
]
]