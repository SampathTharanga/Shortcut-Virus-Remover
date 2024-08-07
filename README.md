# Drive Cleaner and Folder Recovery Script

## Overview

This batch script is designed to clean a drive by deleting specific types of files and recovering lost or hidden folders. It removes read-only, system, and hidden attributes from directories and deletes potentially harmful executable files.

## Features

- **Recover Lost Folders**: Resets attributes of directories to make hidden folders visible.
- **Delete Malicious Files**: Deletes `.exe` files that may be malicious or unwanted.
- **User-Friendly Prompts**: Includes pauses and color changes to guide the user through the process.

## Usage

### Prerequisites

- A Windows operating system.
- Basic understanding of running batch scripts.

### Steps

1. **Download the Script**:
    - Clone the repository or download the script file.

    ```sh
    git clone https://github.com/your-username/drive-cleaner.git
    cd drive-cleaner
    ```

2. **Run the Script**:
    - Open a command prompt.
    - Navigate to the directory containing the script.
    - Execute the script by typing the filename.

    ```sh
    drive_cleaner.bat
    ```

### Script Breakdown

1. **Initial Display and Introduction**:

    ```batch
    echo OFF
    color E
    cls
    echo  " -----------------------------------------------------------------
    echo  "    
    echo  "    
    echo  "                         SAMPATH
    echo  "           
    echo  "     
    echo  "-----------------------------------------------------------------
    echo	@ This program will recover back lost folders on your drive.
    echo	@ Delete viruses that infect to your drive.
    echo "-----------------------------------------------------------------
    echo				BY
    echo				Sampath Tharanga
    echo				Hacking Virus
    echo " ------------------------------------------------------------------
    PAUSE
    ```

2. **Cleaning Drive**:

    ```batch
    cls
    color A
    echo "       wait until cleaning your drive.............
    echo " -------------------------------------------------------------------
    ```

3. **Drive Cleaning Operations**:

    ```batch
    dir /b/ad >log.txt
    for /F  "delims=,    " %%f in (log.txt) do attrib -r -s -h "%%f"
    for /F  "delims=,   " %%f in (log.txt) do del  /p  /f  "%%f.exe"
    del log.txt
    ```

4. **Final Display**:

    ```batch
    PAUSE
    cls
    color F
    echo " ----------------------------------------------------------------------
    echo                     ~~~~~~~Sampath Thranga-(ST)~~~~~~~~
    echo " ----------------------------------------------------------------------
    PAUSE
    ```

## Important Notes

- **Security**: Be cautious when running scripts that modify file attributes and delete files. Ensure you have backups.
- **Scope**: This script operates in the current directory and its subdirectories.
- **Confirmation Prompts**: The script pauses and waits for user input at several points to ensure you can monitor its progress.

## Disclaimer

Use this script at your own risk. The author is not responsible for any data loss or damage that may occur.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

By Sampath Tharanga
