# Experiment with HTML5 Canvas

This is an experiment with HTML5 Canvas and toDataURL() method.

## toDataURL() method
This method converts the canvas drawing into a Base64 encoded string that
represents the image in png format (default).

## Steps
1. draw something on a Canvas.
2. Clicking on the Start Button, passes the DataURL of the canvas object back to the server with an Ajax call.
3. The server decodes the image string and saves the image as a file on the server.
