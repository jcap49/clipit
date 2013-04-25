ClipIt Spec - 4/14-4/20

To-do:

-refactor clips/show & /examples into a partial
  -error messages
  -error chrome is ugly as hell
  -better formatting for clips/show
  -home:
    -needs formatting
  -about:
    -needs formatting
  -create:
    -"Create photo" button needs to be hidden
-create a flash error for false password login attempt

Done (as of 4/21):

Miscellaneous:
-registered for YouTube application API (via google code)
-implemenet user authentication via devise
-wrote home copy
-wrote about copy
-fix delete clip bug
-figure out how to constrain photo size

Views:
-implement mock ups (use some previous work as well)
  -home
  -create
  -edit/view
-finish implementing clip/example
  -how to extract "random" clips from database
-adjust appropriate views to accomodate music syncing portion
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
-finish implementing user auth
  -fix "your clips page" (css tweaks)
  -check to make sure login/logout scenarios ok
  -test login/logout/recover password
  -think about building an admin page
  -need a 404 error for /clips when not signed in
-implement music syncing feature (see youtube api hack)
  -finish implementing jquery dropdown with api
  -clip controller
      -music sync
        -use iframe api to load player (& hide controls - see docs for more info)
        -use youtube data api to search for youtube videos
        (youtube video id on the backend - which then gets passed to iframe api to load/play video)

