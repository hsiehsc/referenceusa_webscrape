
# Reference USA Webscraper
A webscraper written in R and Selenium to scrape entries from Reference USA

## Installation Tutorial
### Prerequisites
**For all downloads, do not change any default settings or tick/untick any extra boxes**
1.	Download and install [R](https://cran.cnr.berkeley.edu/bin/windows/base/R-3.6.1-win.exe). 
2.  Download and install [RStudio Desktop](https://www.rstudio.com/products/rstudio/download/). As of the time of writing this tutorial, the current download is **RStudio-1.2.1335.exe**.
3.	Download and install [RTools](https://cran.r-project.org/bin/windows/Rtools/). As of the time of writing this tutorial, the current download is **Rtools35.exe**. *Download the recommended version instead of the experimental version*
4.  Download and install [Java](https://www.java.com/en/download/win10.jsp). 
5.	If you do not have Mozilla Firefox installed, install [Firefox](https://www.mozilla.org/en-US/firefox/)
6.	Download the webscrape.R file by hitting the green "Clone or download" file above this Readme. Scroll up if you don't see it. Download as a ZIP file and extract the .R file to a folder of your choice.[![iuw6329w-Ir.gif](https://i.postimg.cc/d1rpqkFb/iuw6329w-Ir.gif)](https://postimg.cc/TL2C0Pp0)
**Make sure that the ZIP file is extracted. It might appear as a normal folder on Windows, but it's likely you'll have to right click that downloaded folder and click Extract Here.**
[![0-Tt-Fm-Za-IBn.gif](https://i.postimg.cc/mkQSzC6s/0-Tt-Fm-Za-IBn.gif)](https://postimg.cc/fSRd1tN2)
7. Open RStudio and press Ctrl+O. Navigate to the webscrape.R file and open it in R. Alternatively, in the top left corner of RStudio there is a file tab. File -> Open File -> Navigate to the webscrape.R file.[![Yn1t-V4fv-Mm.gif](https://i.postimg.cc/LsDKfgwj/Yn1t-V4fv-Mm.gif)](https://postimg.cc/PLCRnJtq)

### Step 1
1. **NOTE**: If this is your **first** time setting up RStudio, run the code under Step 1 labeled as only needing to be run **once**. To do this, **highlight** the block of code and hit **Run** in the top right of the quadrant.
The block of code should look like 
`install.packages("RSelenium")`
`install.packages("tidyr")`
`install.packages("tidyverse")`
[![7-AVi-Vdytvi.gif](https://i.postimg.cc/VLdQ3NTF/7-AVi-Vdytvi.gif)](https://postimg.cc/bscBnqqG)
Wait for the installation to finish. The installation will be finished when the red stopsign in the middle of the screen goes away.
[![rstudio-b-BBr7a-Z9w-U.png](https://i.postimg.cc/RZ6kKG2w/rstudio-b-BBr7a-Z9w-U.png)](https://postimg.cc/cvWkN7xJ)
### Step 2
1. Run the code that begins with `library`. There should be **three** lines of code.
[![a-FYs6v4-MHU.gif](https://i.postimg.cc/LXHGv4LL/a-FYs6v4-MHU.gif)](https://postimg.cc/B8Vhn0hn)
3. Run the code that begins with `driver`, then run the code that begins with `remDr`
### Step 3
1. The following step is optional but tests to make sure that the installation has gone smoothly. By running the code that begins with `remDr$navigate`, the Firefox Selenium browser should automatically navigate to Google.
2. Navigate to the **ReferenceUSA** website on the Firefox browser.. **NOTE**: To sign into ReferenceUSA, it's likely you'll have to authenticate yourself. Many authentication systems open new tabs when asked to sign in. If a new tab opens, copy and paste the URL of that tab to the first tab. **This program only works on the first tab.**
3. Once on the ReferenceUSA website, navigate to an Advanced Search and select the keywords/SICs you want to search for.
4. Once you get to the result page that looks like below, you can change the last column from Corp. Tree to a more helpful column like **Sales** or __Employees__.
[![o5n-QXi-AH0b.gif](https://i.postimg.cc/T1cwF34x/o5n-QXi-AH0b.gif)](https://postimg.cc/vxcb6by2)
### Step 4
1. Highlight and select the text from lines **27 to 116**. The code has been marked by *asterisks* **(*)** for easy selection. If done correctly, there should be a `scrape` object that appears in the **right hand side** of the program.
[![b9-SIpmyhj-O.gif](https://i.postimg.cc/3wQybVL3/b9-SIpmyhj-O.gif)](https://postimg.cc/zypXytZQ)
### Step 5
1. Replace the `scrape(pages_scraped, replace_with_file_name)` with how many pages you'd like scraped as well as the requested file name of the file. An example might look like `scrape(5, bagels)` in which 5 pages would be scraped and the file would begin with "bagels". Run the line that you just edited.[![i-CINny-Btcr.gif](https://i.postimg.cc/501s1PtV/i-CINny-Btcr.gif)](https://postimg.cc/SXT6ff8T)

## Frequently Asked Questions (FAQ)
**Q. Where is my scraped file stored?**  
**A.** The file is stored in the same folder that the webscrape.R file is.

**Q. What format is my file in?**  
**A.** The file is a .csv (Comma Separated Values) file that Excel should have no problem reading. Do note that if you want to edit that file by changing the appearance or spacing of columns, re-save the file as a **.xlsx** file. The **.csv** file only stores raw data.

**Q. An error appears that tells me that a port is currently in use.**  
**A.** Restart RStudio and reopen it. Make sure to rerun the code that begins with `library` and restart the process.
