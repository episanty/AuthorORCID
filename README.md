The ORCIDinREVTeX Package
========================

© Emilio Pisanty (2020), available under the [LPPL license](http://www.latex-project.org/lppl.txt).


The ORCIDinREVTeX package is a prototype LaTeX package for the REVTeX class which adds support for ORCID iDs in the author handling. It provides the following features:

 - An `\orcidicon{width}` command, which produces the ORCID iD icon at the specified width. This graphic is produced within `tikz`, and it is a transcription of the SVG version. The default width for the icon is 8pt, and it is encoded as the `\orcidiconwidth` length.

 - An `\orcid{orcid-id}` command, which can be added after each `\author` with the corresponding numerical iD.  An example usage is as follows:

       \author{Josiah Carberry}
       \orcid{0000-0002-1825-0097}
       \affiliation{Department of Psychoceramics, 
                      Brown University}

   This will produce ORCID badges after each author for which an iD has been specified, hyperlinked to that author's ORCID record.


 - An `\listoforcidids` command, which produces an unnumbered section listing all the author ORCID iDs, suitably hyperlinked.

To use the package, add the `ORCIDinREVTeX.sty` file somewhere where LaTeX will find it, and add the line `\usepackage{ORCIDinREVTeX}` to your preamble.

It basically looks as follows:

[<img src="https://github.com/episanty/ORCIDinREVTeX/raw/master/ORCIDinREVTeX.png" width="600" title="First page of the template">](https://github.com/episanty/authororcid/blob/master/authororcid.pdf)

This package calls on the `tikz`, `xcolor` and `enumitem` packages as dependences. For the hyperlinks to work, the `hyperref` package is highly recommendable (but not loaded automatically).

To be honest, the code here is quite 'hacky' and probably quite fragile. It is unlikely that this is a sustainable way forward, but the code presented here will hopefully be a useful prototype and temporary fix until full ORCID iD support is included into the REVTeX class itself.

For full clarity, Josiah Carberry is a fictional person and has no involvement with this work---the authorship is wholly mine (E. Pisanty), and Carberry (described as an expert in the study of `cracked pots' by [Wikipedia](https://en.wikipedia.org/wiki/Josiah_S._Carberry)) is [listed by ORCID](https://support.orcid.org/hc/en-us/articles/360006897674-Structure-of-the-ORCID-Identifier) as a suitable example author for demonstration purposes.

This package contains minor amounts of code modified or adapted from the REVTeX 4.2 class, and more specifically from its component package ltxfront. Both of these are available from [the REVTeX homepage](https://journals.aps.org/revtex).
