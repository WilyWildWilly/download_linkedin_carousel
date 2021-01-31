# download_linkedin_carousel
A tool for downloading carousels (NOT carousel ads!) from LinkedIn.

## Origin of the project
I often see nice tutorials on Linkedin for Data Science and whatnot, published as carousels. Ironically, although they're uploaded as PDFs, downloading them and putting them back together is long and laborious as a process. This is where I'e found myself wanting to automate this process.

## Status of the project
This project is not complete yet. 
### what is there: 
The script downloads the images corresponding to an array of links (LinkedIn carousels contain a series of `< LI >< IMG >< /LI >` in two formats, a big thumbnail and the max-res image) using the open_URI gem and turns them into a PDF file using the image_size and the prawn gem. For now, the links have to be inserted manually into an array of URLs.
### what is missing:
The next step, which is little more than a concept at the moment, is to open the URL of the carousel and parse the response for the hi-res image links, then to pass them as an array to the existing script.

## Dependencies
The existing part uses 3 gems:
Open-URI
Prawn
Image_size

It's written in Ruby 2.6.3

## Install
`gem install prawn open-uri image_size`, then clone the repo and run the script with `ruby download_linkedin_carousels.rb`

## Contributions
What I see fit for this code:
In a first moment, a script that asks for a link as input and a path/filename to output the result.
The following step would be making a public web app and hosting it for free on Heroku, which will ask for a link, validate it as a carousel, ask for a filename and let you download a PDF.

## Why Ruby
Ruby is quite neat and sleek for web applications and I have already found myself working with Prawn, which is well-documented and feature-rich.
