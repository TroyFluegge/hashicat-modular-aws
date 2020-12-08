#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World! <ins><p style="color:red;">${ENVIRONMENT} Environment</p></ins></h2></center>
  <center>Welcome to ${PREFIX}'s app. <!-- Add your custom message to the left --></center>
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
