ClipIt Spec - 4/14-4/20

Version 1: user can create a clip - upload a photo, enter text into a form, put a link to a youtube video (or some other embedded song content - will explore api usage here).

To-do:
-implement music syncing feature (see youtube api hack)
  -clip controller
      -music sync
        -use iframe api to load player (& hide controls - see docs for more info)
        -use youtube data api to search for youtube videos
        (youtube video id on the backend - which then gets passed to iframe api to load/play video)
-figure out how to constrain photo size
-adjust appropriate views to accomodate music syncing portion
-explore building user auth/o-auth (to surprise kyle - yayaya)
-finish implementing clip/example
-fix stupid CSS bullshit:
  -error messages
  -error chrome is ugly as hell
  -better formatting for clips/show
  -home:
    -needs copy
    -needs formatting
  -about:
    -needs copy
    -needs formatting



Done (as of 4/16):
Views:
-implement mock ups (use some previous work as well)
  -home
  -create
  -edit/view

Models:
-create a clip model
  -has title, body, (other attributes)
  -has_many photos

Controllers:
-static pages
  -handles home page (and any other future static pages)
-clip controller
  -handles creation of clip
    -photo upload
    -body (text) of clip submission

