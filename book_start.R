# This file is automatically sourced before each chapter is compiled. (Or is it
# before each session, regardless of the number of chapters being put together?
# That is, if chapter 4 changes the value for `option("digits")`, will the value
# be reset for chapter 5? For now, I doubt we need to worry about that since
# individual chapters rarely mess around with this stuff.)

# This is caused by the setting of "before_chapter_script" in _bookdown.yml.

# Packages used by almost all chapters, and which we don't choose to show to
# students since the code they see does not make use of them.

library(knitr)
library(tufte)
library(scales)
library(gt)
library(patchwork)

options(digits = 2)

# Without this, the cache is created --- in book_temp_cache, since
# `book_filename` is set to "book_temp" in _bookdown.yml --- and then
# automatically deleted by bookdown after knitting is complete. We want the
# cache to persist, at least in the book-builders home directory. I don't think
# that using a common directory will cause conflicts across chapters . . .

# Critical question is whether or not to use/require cache and, if so, where. I
# am concerned that the cache stuff may cause weird errors when people are just
# trying to knit their chapters. That makes me nervous . . .

# knitr::opts_chunk$set(cache=TRUE)
# knitr::opts_chunk$set(cache.path = "cache-directory/")

# Question: Should I delete the cache each time I build the book for release?


