#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Ownership]
#v(40pt)
#only("1-")[If you own a stock in a company, you are:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) a creditor]#only("2-")[#text(fill:red)[a) a creditor]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) an owner]#only("3-")[#text(fill:green)[b) an owner]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) a consultant]#only("4-")[#text(fill:red)[c) a consultant]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) an employee]#only("5-")[#text(fill:red)[d) an employee]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! Let's understand why that is the correct answer.")]
#only("2")[#voiceover("a) A creditor is incorrect. A creditor is someone who has lent money to the company, not someone who owns part of the company.")]
#only("3")[#voiceover("b) An owner is the correct answer. When you own stock in a company, you own a part of that company. You are a shareholder, which means you are a partial owner of the company.")]
#only("4")[#voiceover("c) A consultant is incorrect. A consultant provides expert advice to a company, but does not necessarily own any part of it.")]
#only("5")[#voiceover("d) An employee is also incorrect. An employee works for the company and receives a salary, but does not own a part of the company unless they also happen to own stock.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Ownership Explained]
#v(40pt)
#only("1-")[
- A stock represents a share in the ownership of a company 🏢
]
#v(20pt)
#only("2-")[
- When you buy a stock, you become a shareholder 👥
]
#v(20pt)
#only("3-")[
- Shareholders are partial owners of the company 🤝
]
#v(20pt)
#only("4-")[
- The more shares you own, the larger your ownership stake 📈
]
#v(20pt)
#only("5-")[
- As an owner, you have certain rights, like voting on important company matters 🗳️
]

#only("1")[#voiceover("Let's break this down further. A stock, also known as a share or equity, represents a unit of ownership in a company.")]
#only("2")[#voiceover("When you purchase a stock, you become a shareholder. This means you now own a part, however small or large, of the company.")]
#only("3")[#voiceover("All shareholders collectively own the company. The company's profits belong to the shareholders, and if the company goes bankrupt, the shareholders are the last to be paid out.")]
#only("4")[#voiceover("The more shares of stock you own, the larger your ownership stake in the company. For example, if a company has issued 1,000 shares in total and you own 100 of them, you own 10% of the company.")]
#only("5")[#voiceover("As a part-owner, you have certain rights. For instance, you can vote on major decisions like electing the board of directors. If the company pays dividends, you'll receive a portion based on how many shares you own.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Stock = Ownership 📜
]
#v(20pt)
#only("2-")[
- Shareholder = Owner 🤵
]
#v(20pt)
#only("3-")[
- More Shares = Larger Ownership 📊
]
#v(20pt)
#only("4-")[
- Ownership Comes with Rights 👍
]

#only("1")[#voiceover("In summary, a stock represents ownership in a company.")]
#only("2")[#voiceover("If you own stock, you are a shareholder, which means you are an owner of the company.")]
#only("3")[#voiceover("The more shares you own, the larger your piece of ownership in the company.")]
#only("4")[#voiceover("And as an owner, you have certain rights, like participating in major company decisions. So remember, when you own stock, you're not just an investor, you're an owner!")]

]