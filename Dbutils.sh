 #!/bin/bash

# Define variables
DIR_NAME="example_dir"
FILE_NAME="example_file.txt"
MESSAGE="Hello, this is a sample shell script!"

# Check if the directory exists
if [ ! -d "$DIR_NAME" ]; then
    echo "Directory $DIR_NAME does not exist. Creating it..."
    mkdir "$DIR_NAME"
else
    echo "Directory $DIR_NAME already exists."
fi

# Create or overwrite the file with a message
echo "$MESSAGE" > "$DIR_NAME/$FILE_NAME"
echo "Message written to $DIR_NAME/$FILE_NAME."

# Display the content of the file
echo "Content of $DIR_NAME/$FILE_NAME:"
cat "$DIR_NAME/$FILE_NAME"

# End of script

