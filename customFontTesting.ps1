# Who thinks whatching Open Source Objects while doing this thing was a bad idea?
# Init 
#Import-Module .\nodule_functions.psm1   #Import Custom made module for opening forms
Set-Alias nobj New-Object         #Set alias for easy use
Set-Alias warning Write-Warning   #Same AS Above
echo "INIT_DONE"
# Defining Windows Form 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")      #.NET frameworks
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")#.NET Frameworks
[void] [System.Windows.Forms.Application]::EnableVisualStyles()                 #.NET FrameWorks
echo "ItemDefineDone"
$f = nobj System.Windows.Forms.Form
# $f.Size = nobj System.Drawing.Size(width,height)
$foIB = nobj System.Drawing.Font("Arial",20,[System.Drawing.FontStyle]::Italic) # Set italic font style.(Big)
$foRB = nobj System.Drawing.Font("Arial",18,[System.Drawing.FontStyle]::Regular) # Set Regular font style.(Big)
$foI = nobj System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Italic) # Set italic font style.
$foR = nobj System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Regular) # Set Regular font style.
echo "Current Directory is $PWD" # Echo the current directory self explanatory y im talkin so much no one gonna look anyways
$f.Icon = nobj System.Drawing.Icon ("$PWD\form.ico")
echo iconDefineDone
$f.MaximizeBox = $false
$f.Width = 1000
$f.Height = 500
echo FormDimentionDefineDone
$f.Text = "Welcome | jumpcutter by carykh"
echo FormTitleDone
$f.MinimumSize = '1000,500'
echo FormMinSizeDone
$f.StartPosition = "CenterScreen"
echo FormPosDone
$f.TopMost = $true
echo BasicFormDefineDone # Self-explanatory
# Defining Label "Welcome"
$lb1 = nobj System.Windows.Forms.Label
$lb1.Text =  "Welcome to carykh's video jumpcutting GUI"
$lb1.AutoSize = $true
$lb1.Location = nobj System.Drawing.Size(20,20)
$lb1.Font = $foIB
echo LabelWelcomeDefineDone # Self-explanatory
#Finish Defining Label #1

# Defining Label "Input File"
$inpLB = nobj System.Windows.Forms.Label
$inpLB.Text = "Input File:"
$inpLB.Location = nobj System.Drawing.Size(20,80)
$inpLB.Font = $foR
# Finish Defining Label #2

# Defining TextArea InputFile
$inputFile = nobj System.Windows.Forms.TextBox
$inputFile.Location = nobj System.Drawing.Size(35, 50)
# Finish Defining TextArea #1

# Defining Exit Button
$exitBtn = nobj System.Windows.Forms.Button
$exitBtn.Size = nobj System.Drawing.Size(75,30)
$exitBtn.Location = nobj System.Drawing.Size(850,400)
$exitBtn.Text = "EXIT"
$exitBtn.Font = nobj System.Drawing.Font("Arial",15,[System.Drawing.FontStyle]::Regular) # Set Regular font style.(Big)
$exitBtn.Add_Click({$f.Close()})
# Finish Defining Exit button

<# Define Form Item 101
 do ...
 Nah i suck lets move on
#>
# Add previously defined Items into the form.
$f.Controls.Add($lb1)
echo AddWelcomeLabel

$f.Controls.Add($exitBtn)
echo AddExitButton

$f.Controls.Add($inpLB)
echo AddInputLabel

echo DoneAddDefinedItems
# Show form
echo DisplayingForm
$f.ShowDialog()