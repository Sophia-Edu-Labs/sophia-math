#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating House Problem 🏠]
#v(40pt)
#only("1-")[
- Given:
  - House weight: 50 tons (50,000 kg) 
  - Water displaced: 50 m³
  - Draft (depth below water): 0.5 m
]
#v(20pt)
#only("2-")[
- Find: Surface area of the platform
]
#v(20pt)
#only("3-")[
- Formula: $A = V / "draft"$
  - $A$: Surface area
  - $V$: Volume of water displaced
  - "draft": Depth below water
]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step.")
]
#only("2")[
#voiceover("We need to find the surface area of the platform.")
]
#only("3")[
#voiceover("The formula we'll use is A equals V divided by draft, where A is the surface area, V is the volume of water displaced, and draft is the depth below water.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution 🧮]
#v(40pt)
#only("1-")[
- Substitute values:
  - $V = 50$ m³
  - "draft" $= 0.5$ m
]
#v(20pt)
#only("2-")[
- Calculate:
  $A = 50 / 0.5 = 100$ m²
]
#v(20pt)
#only("3-")[
Therefore, the surface area of the platform is 100 square meters. 🎉
]
#only("1")[
#voiceover("Let's substitute the values we know into the formula. The volume of water displaced, V, is 50 cubic meters, and the draft is 0.5 meters.")
]
#only("2")[
#voiceover("Now we can calculate. A equals 50 divided by 0.5, which gives us 100.")
]
#only("3")[
#voiceover("Therefore, the surface area of the platform is 100 square meters. Great work on solving this problem!")
]
]