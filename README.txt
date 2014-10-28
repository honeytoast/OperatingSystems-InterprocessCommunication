/* Name: Grace Hadiyanto
** Included files: README.txt
**                 makefile
**                 msg.h
**                 recv.cpp
**                 sender.cpp
**                 keyfile.txt
*/
 
How to Compile: cd to the directory of the project
                type 'make' in the terminal
                type 'make clean' to remove object files afterwards
 
How to Run: Open two terminal windows in the same directory.
 
            type './receiver' to start running the receiver program
 
            note*: You can terminate the receiver program early by pressing
                   ctrl-c. It will then deallocate all memory before exiting.
 
            type './sender <filename>' in the other terminal window where
                 <filename> is the name of the text file you want to send
 
            note*: The receiver will then create a 'recvfile.txt' in the same
                   directory, that will contain the contents of what the sender
                   sent.
 
**Special notes**: Earlier on, the receiver program would have segmentation faults 
                   on an Ubuntu virtual machine when trying to write more than 25 
                   bytes to the 'recvfile.txt'. But after changing the code to
                   declare the FILE*, open, and close it within the main function
                   and just passing the pointer into the mainLoop function, the
                   program works without causing segmentation faults.
                   Tested on Mac OSx with the clang++ and g++ compiler.
                   Tested on Ubuntu virtual machine with g++ compiler.
