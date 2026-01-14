# $path = "D:\Udit_Notes"
# $i = 1
# foreach ($file in Get-ChildItem $path) {
# $newName = "Cloud_Computing Notes_$i$($file.Extension)"
# Rename-Item $file.FullName $newName
# $i++
# }
# Write-Host "Renamed successfully"

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
# --- Window ---
$form = New-Object System.Windows.Forms.Form
$form.Text = "Password Generator"
$form.Size = New-Object System.Drawing.Size(400, 250)
$form.StartPosition = "CenterScreen"
# --- Label for Length ---
$label = New-Object System.Windows.Forms.Label
$label.Text = "Password Length:"
$label.Location = New-Object System.Drawing.Point(20, 20)
$label.AutoSize = $true
$form.Controls.Add($label)
# --- Numeric Input (Length) ---
$lengthBox = New-Object System.Windows.Forms.NumericUpDown
$lengthBox.Location = New-Object System.Drawing.Point(150, 18)
$lengthBox.Minimum = 4
$lengthBox.Maximum = 50
$lengthBox.Value = 12
$form.Controls.Add($lengthBox)
# --- Textbox to show password ---
$outputBox = New-Object System.Windows.Forms.TextBox
$outputBox.Location = New-Object System.Drawing.Point(20, 70)
$outputBox.Size = New-Object System.Drawing.Size(340, 30)
$outputBox.ReadOnly = $true
$form.Controls.Add($outputBox)
# --- Generate Button ---
$generateButton = New-Object System.Windows.Forms.Button
$generateButton.Text = "Generate Password"
$generateButton.Location = New-Object System.Drawing.Point(20, 120)
$generateButton.Size = New-Object System.Drawing.Size(150, 30)
$form.Controls.Add($generateButton)
# --- Copy Button ---
$copyButton = New-Object System.Windows.Forms.Button
$copyButton.Text = "Copy"
$copyButton.Location = New-Object System.Drawing.Point(210, 120)
$copyButton.Size = New-Object System.Drawing.Size(80, 30)
$form.Controls.Add($copyButton)
# --- Password Generation Logic ---
$generateButton.Add_Click({
$length = [int]$lengthBox.Value
$chars =
"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
$password = -join ((1..$length) | ForEach-Object {
$chars[(Get-Random -Minimum 0 -Maximum $chars.Length)]
})
$outputBox.Text = $password
})
# --- Copy to clipboard ---
$copyButton.Add_Click({
Set-Clipboard -Value $outputBox.Text
[System.Windows.Forms.MessageBox]::Show("Password copied to
clipboard!")
})
# Show window
$form.ShowDialog()