# Reference USA Webscraper
A webscraper written in R and Selenium to scrape entries from Reference USA

## Installation Tutorial
### Prerequisites
1.	Download and install [R](https://cran.cnr.berkeley.edu/bin/windows/base/R-3.6.1-win.exe). 
2.  Download and install [RStudio Desktop](https://www.rstudio.com/products/rstudio/download/). As of the time of writing this tutorial, the current download is **RStudio-1.2.1335.exe**.
3.	Download and install [RTools](https://cran.r-project.org/bin/windows/Rtools/). As of the time of writing this tutorial, the current download is **Rtools35.exe**. *Download the recommended version instead of the experimental version*
4.	If you do not have Mozilla Firefox installed, install [Firefox](https://www.mozilla.org/en-US/firefox/)
5.	Open RStudio and copy and paste the **webscrape.R** file into the top left quadrant of RStudio. The file can be found above the readme. 

### Step 1
1. **NOTE**: If this is your **first** time setting up RStudio, run the code under Step 1 labeled as only needing to be run **once**. To do this, **highlight** the block of code and hit **Run** in the top right of the quadrant.
### Step 2
1. Run the code that begins with `library`. There should be **three** lines of code.
2. Run the code that begins with `driver`, then run the code that begins with `remDr`
### Step 3
1. The following step is optional but tests to make sure that the installation has gone smoothly. By running the code that begins with `remDr$navigate`, the Firefox Selenium browser should automatically navigate to Google.
2. Navigate to the **ReferenceUSA** website on the Firefox browser.. **NOTE**: To sign into ReferenceUSA, it's likely you'll have to authenticate yourself. Many authentication systems open new tabs when asked to sign in. If a new tab opens, copy and paste the URL of that tab to the first tab. **This program only works on the first tab.**
3. Once on the ReferenceUSA website, navigate to an Advanced Search and select the keywords/SICs you want to search for.
4. Once you get to the result page that looks like a large table, you can change the last column from Corp. Tree to a more helpful column like **Sales** or __Employees__.
### Step 4
1. Highlight and select the text from lines **27 to 116**. The code has been marked by *asterisks* **(*)** for easy selection. If done correctly, there should be a `scrape` object that appears in the **right hand side** of the program.
### Step 5
1. Replace the `scrape(pages_scraped, replace_with_file_name)` with how many pages you'd like scraped as well as the requested file name of the file. An example might look like `scrape(5, bagels)` in which 5 pages would be scraped and the file would begin with "bagels".
2. Run the line that you just edited.

## Frequently Asked Questions (FAQ)
**Q. Where is my scraped file stored?**

**A.** The file is stored in the same folder that the webscrape.R file is.

**Q. What format is my file in?**

**A.** The file is a .csv (Comma Separated Values) file that Excel should have no problem reading. Do note that if you want to edit that file by changing the appearance or spacing of columns, re-save the file as a **.xlsx** file. The **.csv** file only stores raw data.

**Q. An error appears that tells me that a port is currently in use.**

**A.** Restart RStudio and reopen it. Make sure to rerun the code that begins with `library` and restart the process.
