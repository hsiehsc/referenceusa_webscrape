
# Reference USA Webscraper for R
A webscraper written in R and Selenium to scrape entries from Reference USA

## Installation Tutorial
### Prerequisites
**For all downloads, do not change any default settings or tick/untick any extra boxes**
1.	Download and install [R](https://cran.cnr.berkeley.edu/bin/windows/base/R-3.6.1-win.exe). 
2.  Download and install [RStudio Desktop](https://www.rstudio.com/products/rstudio/download/). As of the time of writing this tutorial, the current download is **RStudio-1.2.1335.exe**.
3.	Download and install [RTools](https://cran.r-project.org/bin/windows/Rtools/). As of the time of writing this tutorial, the current download is **Rtools35.exe**. *Download the recommended version instead of the experimental version*
4.  Download and install [Java](https://www.java.com/en/download/win10.jsp). 
5.	If you do not have Mozilla Firefox installed, install [Firefox](https://www.mozilla.org/en-US/firefox/)
6.	Download the webscrape.R file by hitting the green "Clone or download" file above this Readme. Scroll up if you don't see it. Download as a ZIP file and extract the .R file to a folder of your choice.[![brave-f2-CRMNPb8f.png](https://i.postimg.cc/SR16G6HM/brave-f2-CRMNPb8f.png)](https://postimg.cc/kR8RJbJJ)
**Make sure that the ZIP file is extracted. It might appear as a normal folder on Windows, but it's likely you'll have to right click that downloaded folder and click Extract Here.**
8. Open RStudio and press Ctrl+O. Navigate to the webscrape.R file and open it in R. Alternatively, in the top left corner of RStudio there is a file tab. File -> Open File -> Navigate to the webscrape.R file.

### Step 1 - All steps in this tutorial match the steps in the webscrape.R script
1. **NOTE**: If this is your **first** time setting up RStudio, run the code under Step 1 labeled as only needing to be run **once**. To do this, **highlight** the block of code and hit **Run** in the top right of the quadrant.
The block of code should look like 
`install.packages("RSelenium")`
`install.packages("tidyr")`
`install.packages("tidyverse")`
[![rstudio-p-Dhh-FEJQOU.png](https://i.postimg.cc/x1MmkVjH/rstudio-p-Dhh-FEJQOU.png)](https://postimg.cc/18RXTTq5)
Wait for the installation to finish. The installation will be finished when the red stopsign in the middle of the screen goes away.

[![rstudio-b-BBr7a-Z9w-U.png](https://i.postimg.cc/RZ6kKG2w/rstudio-b-BBr7a-Z9w-U.png)](https://postimg.cc/cvWkN7xJ)
### Step 2
1. Run the code that begins with `library`. There should be **three** lines of code.
[![rstudio-JWpi-QIKj-XT.png](https://i.postimg.cc/1XVGJnS7/rstudio-JWpi-QIKj-XT.png)](https://postimg.cc/0KxKNNb7)
3. Run the code that begins with `driver`. When the code is done running, Firefox should open automatically. **DO NOT EXIT THIS WINDOW**
4. Run the code that begins with `remDr`
### Step 3
1. The following step is optional but tests to make sure that the installation has gone smoothly. By running the code that begins with `remDr$navigate`, the Firefox Selenium browser should automatically navigate to Google.
2. Navigate to the **ReferenceUSA** website on the Firefox browser.. **NOTE**: To sign into ReferenceUSA, it's likely you'll have to authenticate yourself. Many authentication systems open new tabs when asked to sign in. If a new tab opens, copy and paste the URL of that tab to the first tab. **This program only works on the first tab.**
3. Once on the ReferenceUSA website, navigate to an Advanced Search and select the keywords/SICs you want to search for.
4. Once you get to the result page that looks like a large table, you can change the last column from Corp. Tree to a more helpful column like **Sales** or __Employees__.
### Step 4
1. Highlight and run the code from lines **27 to 116**. The code has been marked by *asterisks* **(*)** for easy selection. If done correctly, there should be a `scrape` object that appears in the **right hand side** of the program.
### Step 5
1. Replace the line of code that looks like `scrape(pages_scraped, replace_with_file_name)` with how many pages you'd like scraped as well as the requested file name of the file. An example might look like `scrape(5, bagels)` in which 5 pages would be scraped and the file would begin with "bagels".
2. Run the line that you just edited.

## Frequently Asked Questions (FAQ)
**Q. Where is my scraped file stored?**

**A.** The file is stored in the same folder that the webscrape.R file is.

**Q. What format is my file in?**

**A.** The file is a .csv (Comma Separated Values) file that Excel should have no problem reading. Do note that if you want to edit that file by changing the appearance or spacing of columns, re-save the file as a **.xlsx** file. The **.csv** file only stores raw data.

**Q. An error appears that tells me that a port is currently in use.**

**A.** Restart RStudio and reopen it. Make sure to rerun the code that begins with `library` and restart the process.
