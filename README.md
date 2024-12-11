# Unhandled File Not Found Error in Shell Script

This repository demonstrates a common error in shell scripting:  improper handling of file not found errors within a loop.  The `bug.sh` script attempts to process a list of files. However, if a file is missing, the script continues processing the remaining files without indicating the failure and potentially causing unexpected results.

The `bugSolution.sh` script provides a corrected version of the code with appropriate error handling and exits the loop if a file is not found. 

This example highlights the importance of robust error checking and proper loop control in shell scripts. 