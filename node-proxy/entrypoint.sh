#!/bin/bash

# Start the alist process
./alist server --no-prefix &
  
# Start the alist-encrypt process
node index.js &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
