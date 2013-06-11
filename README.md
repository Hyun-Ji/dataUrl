# Experiment with HTML5 Canvas

This is an experiment with HTML5 Canvas's toDataURL() method in Sinatra to
generate pdfs from dynamic charts.

## toDataURL() method
This method on the Canvas object converts the canvas drawing into a Base64 encoded string that represents the image in png format (default).

## Steps
1. On page load, draw something on a Canvas.
2. Clicking on the Start Button, passes the DataURL of the canvas object back to the server with an Ajax call.
3. The server decodes the image string and saves the image as a file on the server.
4. On success, the client triggers a hidden link to retrieve the pdf.

### NOTES:
_This is an experiment!_
_In real life, a better approach would be to do all of this work on either the client or server side._
