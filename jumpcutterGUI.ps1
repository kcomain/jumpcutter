##### Remark: These lines marked with "#####" will be deleted later.
##### This code is not finished. 
##### version v0.12.12.prerelease
##### carykh(2019), Kenny Cheung (2019)
##### Coding started on 2019/04/15=6 17:00:04


#  -----Declaration-----
$filelocation = ""

#  --------Done---------

#----------------------------------------------------------------------------------
# Initialization
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
#       #template#
# $title = 'Test'
# $msg = 'Enter your demographics:'
# $text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)
#       #End Template#
#----------------------------------------------------------------------------------
function fileLoc {
$text = [Microsoft.VisualBasic.Interaction]::InputBox("Please enter the file location of the original file.`nYou can also drag it into the box below.", "form2")
# The module for checking if user accept the file.
    if ($result -eq 'Yes'){
        echo "User accept file"
        return 0
        } else {
        echo "User Don't accept file"
        return 1
    }
}
#----------------------------------------------------------------------------------
# add the required .NET assembly (Initialization)
Add-Type -AssemblyName System.Windows.Forms
# show the MsgBox:

## START TEMPLATE
# $result = [System.Windows.Forms.MessageBox]::Show('Message', 'Title', 'YesNo', 'Warning')
# check the result:


## END TEMPLATE
#----------------------------------------------------------------------------------

## Main Code

echo "Welcome to carykh's jumpcutter"
echo ""
echo "Source code is on GitHub (here: https://github.com/carykh/jumpcutter)"
echo "you may not want to look in here."
echo ""
$msgbox = [System.Windows.Forms.MessageBox]
$nothing = $msgbox::Show("Welcome to carykh's jumpcutter GUI.`nClick Ok to continue.", 'Welcome', 'Ok')
fileloc
