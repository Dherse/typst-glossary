#import "../glossary.typ": *

#set page(numbering: "I", paper: "a6")

#show: glossary.with((
    (key: "kuleuven", short: "KU Leuven", long: "Katholieke Universiteit Leuven"),
    (key: "uclouvain", short: "UCLouvain", long: "Université catholique de Louvain"),
    (key: "ughent", short: "UGent", long: "Universiteit Gent"),
    (key: "vub", short: "VUB", long: "Vrije Universiteit Brussel"),
    (key: "ulb", short: "ULB", long: "Université Libre de Bruxelles"),
    (key: "umons", short: "UMons", long: "Université de Mons"),
    (key: "uliege", short: "ULiège", long: "Université de Liège"),
    (key: "unamur", short: "UNamur", long: "Université de Namur"),
))

There are many Belgian university, like @kuleuven and @ulb. When repeating their names, they won't show as a long version: @kuleuven, @ulb. But we can still force them to be long using the `gloss` function: #gloss("kuleuven", long: true). We can also force them to be short: #gloss("kuleuven", short: true). Finally, we can make them plural using the `suffix` parameter: #gloss("kuleuven", suffix: "s") or using the additional `supplement` onto the `ref`: @kuleuven[s].

#pagebreak()
#set page(numbering: "1")

Numbering is, of course, correct when referencing the glossary: @kuleuven, @ulb, @ughent, @vub, @ulb, @umons, @uliege, @unamur. They are also sorted based on where the page is in the document and not the textual representation.

#pagebreak()

At the moment, customization is not built-in to the function and instead follows a modified version of @ughent's template. But you can easily customize it by modifying `glossary.typ`. It is short enough and well documented enough to be easily understood. Additionally, you can load data externally and pass it as a parameter to the `glossary.with` function to load data from an external format.