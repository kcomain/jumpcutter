# Who thinks whatching Open Source Objects while doing this thing was a bad idea?
# Init 
#Import-Module .\nodule_functions.psm1   #Import Custom made module for opening forms
Set-Alias nobj New-Object         #Set alias for easy use
Set-Alias warning Write-Warning   #Same AS Above
Write-Output "INIT_DONE"
# Defining Windows Form 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")      #.NET frameworks
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")#.NET Frameworks
[void] [System.Windows.Forms.Application]::EnableVisualStyles()                 #.NET FrameWorks
Write-Output "ItemDefineDone"
$f = nobj System.Windows.Forms.Form

# $f.Size = nobj System.Drawing.Size(width,height)
$foIB = nobj System.Drawing.Font("Arial",20,[System.Drawing.FontStyle]::Italic) # Set italic font style.(Big)
$foRB = nobj System.Drawing.Font("Arial",18,[System.Drawing.FontStyle]::Regular) # Set Regular font style.(Big)
$foI = nobj System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Italic) # Set italic font style.
$foR = nobj System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Regular) # Set Regular font style.
Write-Output FontDone
Write-Output "Current Directory is $PWD" # Write-Output the current directory self explanatory y im talkin so much no one gonna look anyways


$f.Icon = nobj System.Drawing.Icon ("$PWD\form.ico")
Write-Output iconDefineDone
$f.MaximizeBox = $false
$f.Width = 1000
$f.Height = 500
Write-Output FormDimentionDefineDone
$f.Text = "Welcome | jumpcutter by carykh"
Write-Output FormTitleDone
$f.MinimumSize = '1000,500'
Write-Output FormMinSizeDone
$f.StartPosition = "CenterScreen"
Write-Output FormPosDone
$f.TopMost = $true
Write-Output BasicFormDefineDone # Self-explanatory

##### WELCOME LABEL #####
# Defining Label "Welcome"
$lb1 = nobj System.Windows.Forms.Label
Write-Output LabelWelcomeInit
$lb1.Text =  "Welcome to carykh's video jumpcutting GUI"
Write-Output LabelWelcomeText
$lb1.AutoSize = $true
Write-Output LabelWelcomeASize
$lb1.Location = nobj System.Drawing.Size(20,20)
Write-Output LabelWelcomeLocation
$lb1.Font = $foIB
Write-Output LabelWelcomeDefineDone # Self-explanatory
##### WELCOME LABEL #####

##### label.inputfile #####
$inpLB = nobj System.Windows.Forms.Label
Write-Output LabelInputFileInit
$inpLB.Text = "Input File:"
Write-Output LabelInputFileText
$inpLB.Location = nobj System.Drawing.Size(20,80)
Write-Output LabelInputFileLocation
$inpLB.Font = $foR
Write-Output LabelInputFileFont
##### label.inputfile #####

# Defining TextArea InputFile
$inputFile = nobj System.Windows.Forms.TextBox
Write-Output TextAeraInputFileInit
$inputFile.Location = nobj System.Drawing.Size(35, 50)
Write-Output TextAeraInputFileLocation
# Finish Defining TextArea #1

# Defining Exit Button
$exitBtn = nobj System.Windows.Forms.Button
Write-Output ButtonExitInit
$exitBtn.Size = nobj System.Drawing.Size(75,30)
Write-Output ButtonExitSize
$exitBtn.Location = nobj System.Drawing.Size(850,400)
Write-Output ButtonExitLocation
$exitBtn.Text = "EXIT"
Write-Output ButtonExitText
$exitBtn.Font = nobj System.Drawing.Font("Arial",15,[System.Drawing.FontStyle]::Regular) # Set Regular font style.(Big)
Write-Output ButtonExitFont
$exitBtn.Add_Click({$f.Close()})
Write-Output ButtonExitFunction
Write-Output ButtonExitDone
# Finish Defining Exit button

<# Define Form Item 101
 do ...
 Nah i suck lets move on
#>
# Add previously defined Items into the form.
$f.Controls.Add($lb1)
Write-Output AddWelcomeLabel

$f.Controls.Add($exitBtn)
Write-Output AddExitButton

$f.Controls.Add($inpLB)
Write-Output AddInputLabel

$f.Controls.Add($inputFile)
Write-Output AddInputfileBox

Write-Output DoneAddDefinedItems

warning "This is in beta stage, things might not work properly."

# Show form
Write-Output DisplayingForm
$f.ShowDialog()