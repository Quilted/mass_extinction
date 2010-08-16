; $Id: README.txt,v 1.5 2007/03/13 17:08:23 weam Exp $
This is the README of the XML Content filter module.

Introduction
============
XML Content enables you to store XML content in a node body and use the drupal built-in filter system to transform it to HTML with a pre-configured XSLT script of your choice, and performs XML input validation on submit.

Currently, the module provides 1 filter per input format. You can however create as many input formats as you like, each with its own XSLT script, and validation / schema settings.


Requirements
============
XML Content currently depends on the libxslt library for PHP. If you have PHP 5, then it is installed by default. However check with the PHP ini files to make sure it is enabled.

Getting Started
===============
To get started:
1. Install the module (see the drupal site for help on how to install drupal modules)
2. Go to Administer -> Site Configuration -> Input formats
3. Create a new input format, say "XML Article"
4. Enable the "XML|XSLT filter" for this format (checkbox)
5. Save Configuration
6. Click "Configure" for this format
7. Fill the "XSLT script file path" field. Similarly choose the validation type and file.
8. Save Configuration
9. Create a new content item (e.g. page, story, etc)
10. Set its input format to your created format (i.e. "XML Article")
11. Set the xml article body content
12. Submit. You should see the output as HTML, according to your XSLT script
13. If something is wrong, consult the system logs, or drupal site project page

It is recommended that the XML filter be the first to run in the input format (set weight to -10).
The 'examples' directory contains example XML documents and XSLT scripts.

For more information, see http://drupal.org/project/xmlcontent

Enjoy!

-W.