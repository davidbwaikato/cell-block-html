# Cell Block HTML

Rich HTML display capabilities and Text Analysis within a web-based
spreadsheet.

Developed through splicing additional code into the Ethercalc and
its sub-package SocialCalc.  Installation required you to
git checkout the modified 'socialcalc', and compile it up.
Then you git clone our fork of the'ethercalc' project.
In building this forked version, it overwrites the standard
socialcalc sub-package in node_modules with our custom version.

See INSTALL.txt for further details on how to get thigs setup
and running.

## Usage of Extended Capabilities

Example usage of the OCCURS() function to count how many times a substring/regular expression
occurs in a text cell:

In Cell B4 enter:

    Crooked Hillary Clinton blames everybody (and every thing) but herself for her election loss. She lost the debates and lost her direction! Everybody is asking why the Justice Department (and FBI) isn’t looking into all of the dishonesty going on with Crooked Hillary & the Dems.
  
Now in Cell B5 enter:

    =occurs("/crooked hillary/gi",B4)

The result that appears in the B5 cell is:
    2
    


