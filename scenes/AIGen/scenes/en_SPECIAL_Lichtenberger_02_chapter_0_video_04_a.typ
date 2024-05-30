#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct solution! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("Great job! That's the correct solution. Let's see how we can solve this step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[
- Area of pump piston: $A_("pump") = 5.0 "cm"^2$
- Area of press piston: $A_("press") = 400 "cm"^2$
- Stroke length: $l = 50 "cm"$
- Lifting height: $h = 2.0 "m"$
]
#only("1")[
#voiceover("First, let's gather the given information. We know the area of the pump piston is 5.0 square centimeters, the area of the press piston is 400 square centimeters, the stroke length is 50 centimeters, and the lifting height is 2.0 meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume Equality]
#v(40pt)
#only("1-")[
The volume of fluid moved by the pump must equal the volume moved by the press:
]
#v(20pt)
#only("2-")[
$V_("pump") = V_("press")$
]
#v(20pt)
#only("3-")[
$A_("pump") dot n dot l = A_("press") dot h$
]
#only("1")[
#voiceover("The key principle here is that the volume of fluid moved by the pump must equal the volume moved by the press.")
]
#only("2")[
#voiceover("We can express this as V sub pump equals V sub press.")
]
#only("3")[
#voiceover("This can be written in terms of the areas, number of strokes n, stroke length l, and lifting height h as A sub pump times n times l equals A sub press times h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solve for n]
#v(40pt)
#only("1-")[
Rearrange the equation to solve for $n$:
]
#v(20pt)
#only("2-")[
$n = (A_("press")/A_("pump")) dot (h/l)$
]
#v(20pt)
#only("3-")[
$n = (400 "cm"^2/5.0 "cm"^2) dot (2.0 "m"/0.5 "m")$
]
#v(20pt)
#only("4-")[
$n = 80 dot 4 = 320$
]
#only("1")[
#voiceover("Now, let's rearrange the equation to solve for n, the number of strokes.")
]
#only("2")[
#voiceover("We get n equals A sub press over A sub pump times h over l.")
]
#only("3")[
#voiceover("Plugging in the values, we have n equals 400 square centimeters over 5.0 square centimeters times 2.0 meters over 0.5 meters.")
]
#only("4")[
#voiceover("This simplifies to n equals 80 times 4, which equals 320.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[
The pump piston must be lowered 320 times. 🎉
]
#only("1")[
#voiceover("Therefore, the pump piston must be lowered 320 times. Great work on solving this problem!")
]
]