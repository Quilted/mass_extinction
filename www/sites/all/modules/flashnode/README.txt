Flash node module
-----------------

IMPORTANT

If you are about to upgrade your site from Drupal 5 to Drupal 6 then you MUST
read UPDATE.txt before beginning your site upgrade.

In particular, if you are upgrading from flash node 5.x.3.1 or ealier then
failure to follow the upgrade instructions will result in your flash content
being broken!


Description
-----------
Flash node is designed to make it very easy to upload flash content on to a
Drupal based website. When enabled it creates a new content type called
Flash so you can upload movies without writing any code or HTML.

Flash node can insert flash content on a page using direct embededing via the
<object> and <embed> tags.

Flash node supports a comprehensive set of options to control how the flash
content is displayed. With the release of version 6 these controls can now be
limited by user role to prevent users from being able to adjust particular
settings.

Flash node can also take advantage of the SWF Tools module
(drupal.org/project/swftools) to implement javascript embedding, although at
this time SWF Tools hasn't been upgraded to Drupal 6 so this feature is
currently unavailable. When combined with SWF Tools you can also upload flv and
mp3 files to a flash node. This makes use of the built in SWF Tools media
players to output audio and video content.


Using flashnode
---------------
In its simplest form you simply create a flash node, upload a file, write
your body text as normal and hit submit, and the file will display.

You can set other parameters on the input form and these are found under
Basic flash node options and Advanced flash node options. The basic options
let you set whether the movie should appear in the teaser, body or both views,
and you can also adjust the movie size if required.

Advanced options let you change the substitution text that appears if using
a javascript insertion method, and you can also set flashvars and the base
parameter to correctly locate sub-movies.

If the node is using PHP input format then you can generate flashvars via
PHP code to make dynamic movies that receive data from the host website.

Flashnode also allows you to activate an additional input format that lets you
use a simple macro language to re-use flash content on other pages. These
take the form [flashnode|nid=nnn] and can be supplemented with parameters to
size and scale the content or pass different flashvars.

Flash node also features an "import" option. It is possible to upload multiple
files under the flash directory and use flash node to import and create a node
from each one. This feature is found under Administer > Content management >
Import Flash.


Documentation
-------------
Flash node documentation is available at drupal.org/node/214846


Large files!
------------
Please note that if you are working with large files then you might exceed
the upload limit for your Drupal configuration. If this happens then when
you submit a flash node you might see a message asking you to upload a valid
file even though you provided an swf, mp3 or flv. If you see that message then
double check the file size, or try uploading a smaller file.

; $Id: README.txt,v 1.9 2008/11/12 21:23:49 stuartgreenfield Exp $
