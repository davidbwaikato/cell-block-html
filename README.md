# Cell Block HTML

A web-browser based spreadsheet application capable of supporting rich
HTML display capabilities within each cell, which additionally
provides a suite of text manipulation and analysis functions so you
can develop spreadsheet formulas that implement a range of
text analytics.

As this project makes used of submodules, the recommended way to
clone/checkout it out is with:

    git clone --recursive https://github.com/davidbwaikato/cell-block-html.git

Failing that, having checked out this top-level project, to get
the submodules, you can then run:

    git submodule update --init --recursive

## About the code

The extended spreadsheet functionality this project provides is
accomplished through splicing additional code into the _npm_ package
for [EtherCalc] and its sub-package [SocialCalc].  The directories
'cbhtml-socialcalc' and 'cbhtml-ethercalc' are the corresponding forks
of these github projects, tied in as submodules to this parent
repository, _cell-block-html_.

See [INSTALL.md] for further details on how to get things
setup and running.


## Example Usage of Extended Capabilities

As a simple example of the extended capabilities, here's how to go
about using Cell Block HTML's OCCURS() function with a regular
expression matching capability to count occurrences of the a given
term in text.

1. Access the home page to your installed Cell Block HTML, for example:

  http://localhost:8000/

and start a new spreadsheet.

2. In Cell B4 enter:

    Crooked Hillary Clinton blames everybody (and every thing) but herself for her election loss. She lost the debates and lost her direction! Everybody is asking why the Justice Department (and FBI) isn’t looking into all of the dishonesty going on with Crooked Hillary & the Dems.
  
3. Now in Cell B5 enter:

    =occurs("/crooked hillary/gi",B4)

The result that appears in the B5 cell is:
    2
    

[EtherCalc]: https://github.com/audreyt/ethercalc
[SocialCalc]: https://github.com/marcelklehr/socialcalc

[INSTALL.md]: ./INSTALL.md


