#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Heuristics]
#v(40pt)
#only("1-")[What are heuristics?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) complex algorithms]#only("2-")[#text(fill:red)[a) complex algorithms]]  
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) mental shortcuts]#only("3-")[#text(fill:green)[b) mental shortcuts]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) market trends]#only("4-")[#text(fill:red)[c) market trends]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.  
#only("-4")[d) investment strategies]#only("5-")[#text(fill:red)[d) investment strategies]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about b and why it is correct  
#only("3")[#voiceover("Heuristics are indeed mental shortcuts or rules of thumb that people use to make decisions.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Complex algorithms, on the other hand, are detailed step-by-step procedures for solving a problem, usually requiring a computer. So this is not the correct definition of heuristics.")] 
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Market trends refer to the general direction in which a market is moving. While heuristics might be used to identify trends, they are not the same thing.")] 
// Very briefly Talk about d and why it is incorrect 
#only("5")[#voiceover("Investment strategies are plans for investing money to achieve a specific financial goal. Again, heuristics might be part of an investment strategy, but they are not synonymous.")] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Heuristics Explained]
#v(40pt)  
#only("1-")[- 🧠 Heuristics are simple, efficient rules]
#only("2-")[- 👍 They are used to form judgments and make decisions]
#only("3-")[- ⏰ Often based on little information]
#only("4-")[- 🎯 Can lead to cognitive biases]

#only("1")[#voiceover("Let's dive a bit deeper into what heuristics are. Heuristics are simple, efficient rules that people often use unconsciously.")]
#only("2")[#voiceover("We use them to form judgments and make decisions, especially in complex or uncertain situations.")] 
#only("3")[#voiceover("Heuristics often rely on very little information, focusing on one aspect of a complex problem and ignoring others.")] 
#only("4")[#voiceover("While heuristics can be useful, they can also lead to cognitive biases and systematic errors in judgment.")] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples of Heuristics]
#v(40pt)
#only("1-")[- 🛒 Choosing a restaurant based on how busy it is]
#only("2-")[- 📈 Judging the quality of a product by its price]  
#only("3-")[- 🗳️ Voting for a political candidate based on party affiliation] 
#only("4-")[- 🏥 Diagnosing an illness based on a single symptom]

#only("1")[#voiceover("For example, when choosing a restaurant, you might use the heuristic that a busy restaurant is likely to have good food. This is a mental shortcut that relies on limited information.")] 
#only("2")[#voiceover("Similarly, when shopping, you might assume that a more expensive product is of higher quality. This is a heuristic based on price.")] 
#only("3")[#voiceover("In politics, some people may vote for a candidate simply because they belong to a particular party, rather than considering the candidate's individual merits.")] 
#only("4")[#voiceover("And in medicine, a doctor might initially diagnose an illness based on a single prominent symptom, before conducting further tests.")] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Heuristics in Behavioral Finance]
#v(40pt)  
#only("1-")[- 📉 Representativeness heuristic: judging based on similarity]
#only("2-")[- 🔖 Availability heuristic: judging based on ease of recall] 
#only("3-")[- ⚓ Anchoring and adjustment: overreliance on first piece of information]
#only("4-")[- 🐑 Herd behavior: following actions of a larger group] 

#only("1")[#voiceover("In behavioral finance, several key heuristics have been identified. The representativeness heuristic involves making judgments based on how similar an outcome is to the parent population.")] 
#only("2")[#voiceover("The availability heuristic involves making judgments based on how easily examples come to mind.")] 
#only("3")[#voiceover("Anchoring and adjustment refer to the tendency to rely too heavily on the first piece of information offered when making decisions.")] 
#only("4")[#voiceover("And herd behavior occurs when people follow the actions of a larger group, rather than making independent decisions.")] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- Heuristics are 🧠 mental shortcuts
- They can lead to 🎯 cognitive biases  
- Several heuristics affect 📊 financial decision-making
- Understanding heuristics is key in 🔍 behavioral finance

#only("1")[#voiceover("To sum up, heuristics are mental shortcuts or rules of thumb that we use to make judgments and decisions.")] 
#only("2")[#voiceover("While they can be useful, they can also lead to cognitive biases and errors in judgment.")] 
#only("3")[#voiceover("In behavioral finance, several key heuristics have been identified that can affect financial decision-making, like the representativeness heuristic, availability heuristic, anchoring and adjustment, and herd behavior.")] 
#only("4")[#voiceover("Understanding these heuristics is a key part of behavioral finance, as it helps explain why people sometimes make irrational financial decisions.")] 
]