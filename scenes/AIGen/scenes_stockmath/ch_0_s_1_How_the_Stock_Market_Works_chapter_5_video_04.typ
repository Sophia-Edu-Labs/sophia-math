#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key role of brokers and trading platforms in the stock market.")
]
#text(size: 30pt, weight: "bold")[Brokers & Trading Platforms 🌉]
#v(40pt)
#only("2")[
#voiceover("Brokers act as intermediaries between buyers and sellers in the stock market. They facilitate transactions, making the process of buying and selling stocks more accessible to individual investors.")
]
#only("2-")[
- Brokers: intermediaries between buyers and sellers 🤝
]
#v(20pt)
#only("3")[
#voiceover("Trading platforms, on the other hand, provide the technology and tools necessary for traders to execute buy and sell orders, access market data, and manage their investment portfolios.")
]
#only("3-")[
- Trading platforms: technology & tools for trading 💻
]
#v(20pt)
#only("4")[
#voiceover("Together, brokers and trading platforms form a critical infrastructure in the stock market. They serve as the bridge connecting buyers and sellers, enabling the efficient exchange of stocks.")
]
#only("4-")[
- Critical infrastructure: connecting buyers & sellers 🌉
]
]

#slide()[
#only("1")[
#voiceover("Let's visualize this relationship.")
]
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import networkx as nx

# Create a new graph
G = nx.Graph()

# Add nodes
G.add_node("Buyers", pos=(-1, 0.5))
G.add_node("Sellers", pos=(1, 0.5))
G.add_node("Brokers", pos=(0, 1))
G.add_node("Trading Platforms", pos=(0, 0))

# Add edges
G.add_edge("Buyers", "Brokers")
G.add_edge("Sellers", "Brokers")
G.add_edge("Brokers", "Trading Platforms")

# Draw the graph
pos = nx.get_node_attributes(G, 'pos')
nx.draw_networkx_nodes(G, pos, node_size=1000, node_color=['lightblue', 'lightgreen', 'orange', 'gold'])
nx.draw_networkx_labels(G, pos, font_size=12, font_family='sans-serif')
nx.draw_networkx_edges(G, pos, width=2, alpha=0.7, edge_color='gray')

# Remove axis
plt.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
#only("2")[
#voiceover("In this network, buyers and sellers are connected to brokers, who in turn are connected to trading platforms.")
]
#only("3")[
#voiceover("This illustrates how brokers and trading platforms facilitate the interaction between buyers and sellers in the stock market.")
]
]
]

#slide()[
#only("1")[
#voiceover("In summary, brokers and trading platforms are essential components of the stock market ecosystem.")
]
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("2")[
#voiceover("Brokers serve as intermediaries, connecting buyers and sellers and facilitating transactions.")
]
#only("2-")[
- Brokers: intermediaries, facilitate transactions 🤝
]
#v(20pt)
#only("3")[
#voiceover("Trading platforms provide the necessary technology and tools for executing trades and managing portfolios.")
]
#only("3-")[
- Trading platforms: technology & tools for trading 💻
]
#v(20pt)
#only("4")[
#voiceover("Together, they form a critical infrastructure that enables the efficient functioning of the stock market.")
]
#only("4-")[
- Critical infrastructure for efficient stock market 🌉
]
]