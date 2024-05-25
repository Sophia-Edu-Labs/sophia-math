#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Voting Rights]
#v(40pt)
Which type of stock typically has voting rights? 🗳️
#v(40pt)
#only("-1")[a) Bond stocks]#only("2-")[#text(fill:red)[a) Bond stocks ❌]]
#v(10pt)
#only("-2")[b) Preferred stocks]#only("3-")[#text(fill:red)[b) Preferred stocks ❌]]
#v(10pt)
#only("-3")[c) Common stocks]#only("4-")[#text(fill:green)[c) Common stocks ✅]]
#v(10pt) 
#only("-4")[d) Non-voting stocks]#only("5-")[#text(fill:red)[d) Non-voting stocks ❌]]

#only("1")[
#voiceover("Sorry, that's not correct. Let's take a look at the right solution.")
]
#only("2")[
#voiceover("Bond stocks are incorrect. Bonds represent debt, not ownership, so they don't come with voting rights.")
]
#only("3")[
#voiceover("Preferred stocks are also incorrect. While they represent ownership, preferred stockholders generally do not have voting rights.")
]
#only("4")[
#voiceover("Common stocks is the right answer. Common stockholders are typically granted voting rights in proportion to their ownership stake.")
]
#only("5")[
#voiceover("And non-voting stocks, as the name implies, do not grant voting rights to their holders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- Stock represents ownership in a company 🏢]
#v(20pt)
#only("2-")[- Voting rights allow shareholders to vote on corporate matters 🗳️]
#v(20pt)
#only("3-")[- Common stock usually comes with voting rights 👍]
  - One vote per share
  - Vote on board of directors, mergers, etc.
#v(20pt)  
#only("4-")[- Preferred stock usually has no voting rights 👎]
  - Priority for dividends and assets instead
#v(20pt)
#only("5-")[- Bonds and non-voting stock, by definition, have no voting rights ⛔]

#only("1")[
#voiceover("Let's break this down. Stock represents ownership in a company.")
]
#only("2")[
#voiceover("Voting rights allow shareholders, the owners, to vote on important corporate matters.")
]
#only("3")[
#voiceover("Common stock, the most basic form of company ownership, usually comes with voting rights. Typically, it's one vote per share, and shareholders can vote on things like the board of directors and major corporate actions like mergers.")
]
#only("4")[
#voiceover("On the other hand, preferred stock usually does not come with voting rights. Instead, preferred shareholders have priority over common shareholders for dividends and assets in the event of liquidation.")
]  
#only("5")[
#voiceover("And bonds, which represent debt rather than ownership, and stocks explicitly labeled as non-voting stock, by definition do not come with voting rights.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Common stock 🟢]
  - Represents ownership
  - Usually has voting rights
#v(20pt)  
#only("2-")[- Preferred stock 🟡]
  - Represents ownership 
  - Usually no voting rights
  - Priority for dividends and assets
#v(20pt)  
#only("3-")[- Bonds 🔴]
  - Represent debt, not ownership
  - No voting rights
#v(20pt)
#only("4-")[Remember: Voting rights = Ownership (usually common stock) 🗳️]

#only("1")[
#voiceover("To summarize, common stock represents ownership and usually comes with voting rights.")
]
#only("2")[
#voiceover("Preferred stock also represents ownership but usually does not come with voting rights. Instead, it has priority for dividends and assets.")
]
#only("3")[
#voiceover("Bonds represent debt rather than ownership, so they don't come with voting rights.")
]
#only("4")[  
#voiceover("The key takeaway is that voting rights are tied to ownership, and it's usually the common stockholders who have these rights.")
]
]