# Effectively Using This Repository
## AUTHOR: Cole Brookson, June 2023


The RManual is a website, hosted by the University of Toronto servers, that is built by compiling standard HTML5/CSS style web-pages with HTML5 pages that are produced by compiling a set of `.rhtml` files, which use other `.html`, `.css` and `.js` scripts and files to make all of their content. 

## Adding New Content

Content for the website is located in the `content` folder. Any content that is a single page (i.e. a page with embedded R code) will need to begin as a `.rhtml` file, and then compiled into a `.html` file. This is done by makig a new file in the appropriate sub-folder, writing the code in the file, and then adding that file to the listed of named files in `./content/knit-script.R` which moves through all of the aforementioned folders, compiling the `.rhtml` files into `.html` files. 

### Writing Content Workflow

It is typically easiest to start with the content in a `.rmd` file, where you can ensure the code compiles and include it with the accompanying text. Then, transfer it to a `.rhtml` file and format it appropriately 

#### Adding Stylization

To add things like sidebars, understanding checks, and even images, use code from the `/content/common/` folder, where examples of the general formats can be found. 

#### Testing

Testing is an important component of the website running smoothly. When making changes, always test during the changes, and *always* test before the website gets launched with the new content. The how-to of that process requires Apache (downloadable onto all platforms), and an extremely short demo on how to use Apache for testing this website specifically can be found in `docs/testing-protocol.md`. 

#### Launching New Material

New material is launched by Ryan MacDonald from the EEB IT group. He has the link to this repo, so when the new content is added and tested, you can just message Ryan, he will pull the content from online, and post it for you as soon as his availability allows. 
