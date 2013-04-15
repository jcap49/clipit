ClipIt Spec - 4/14-4/20

V1: user can create a clip - upload a photo, enter text into a form, put a link to a youtube video (or some other embedded song content - will explore api usage here).


Models:
-create a clip model
  -has title, body, (other attributes)
  -has_many photos

-create a photo model
  -belongs_to clip

Views:
-implement mock ups (use some previous work as well)
  -home
  -create
  -edit/view

Controllers:
-static pages
  -handles home page (and any other future static pages)
-clip controller
  -handles creation of clip
    -photo upload
    -music sync
    -body (text) of clip submission
