A minor script to learn a few functions with Powershell. 
It renames any file (not folders) from where it is run, only changing the filename, so the extension is preserved.

Steps:
1. Opens the file, so you can know the content inside it;
2. Asks the new filename for it, depending on the input, it can make other things such as:
- Don't input anything => don't change the filename;
- Input "trash" => File is renamed to "trash{number}" with {number} being a increasing number. Used so after renaming all files, it can be detected which files are for deleting;
- Anything else => Change the filename with this input.
3. Prints new filename;
4. Repeats steps 1 to 3 until there's no other file remaining.

To-do
- Get process Id and close it after input.

Made on Powershell 7.x