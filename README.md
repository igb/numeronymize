# numeronymize
Numeronymize is an Elisp extension for the [Emacs](https://www.gnu.org/software/emacs/) text editor that enables a user to transform words into numerical contraction numeronyms. This form of abbreviation takes the characters between the first and last characters in a word or phrase and replaces them with the number of characters between the first and last charcaters of the word or phrase. For example, the word "Kubernetes" would be abbreviated as "K8s" because ther are 8 characters ("ubernete") between the starting "K" and the ending "s".   


#### Some examples of (numerical contraction) numeronyms:

- i18n --- internationalization
- a11y --- accessibility
- c14n --- canonicalization
- o11y --- observability
- e14n --- Andreesen Horowitz

More details can be found [here](https://en.wikipedia.org/wiki/Numeronym#Numerical_contractions).   


## Installation Instructions

1. Download and save the file [numeronymize.el](https://raw.githubusercontent.com/igb/numeronymize/master/numeronymize.el) to a local directory on the computer where you run Emacs.

2. Locate your *.emacs* file in your home directory and add the following line:
```Elisp
(load "/path/of/local/directory/where/file/was/saved/into/numeronymize")
```
Note that you do not need the ".el" filename extension in the path, just the path of the local directory in which the downloaded file resides followed by the string "numeronymize".

If you do not have a *.emacs* in your home directory go ahead and create an empty file and add the line described above.

```Shell
touch ~/.emacs; echo  '(load "/path/of/local/directory/where/file/was/saved/into/numeronymize")' >> ~/.emacs
```


## How to use

**TL;DR:** *M-x numeronymize*

### Details ###
1. In a buffer or file [select a region of text.](https://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_chapter/emacs_12.html) that you want to abbreviate.
2. Enter the Emacs command *M-x numeronymize*.
3. The selected text will be replaced with a numerical contraction numeronym. 


## Questions? ##

You can always contact me with any questions at [@igb@mastodon.hccp.org](https://mastodon.hccp.org/@igb/).
