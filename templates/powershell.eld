powershell-mode

(cmdprm "[cmdletbinding()]" n "Param (" n> q n ")" >)
(cmthlp "<#" n
     ".SYNOPSIS" n (p "Brief description") n n
     ".DESCRIPTION" n (p "Longer description") n n
     ".PARAMETER Foobar" n (p "Descriptions of parameter Foobar") n n
     ".EXAMPLE" n (p "Actual example") n n
     ".NOTES" n (p "Additional notes") n "#>")
(fn "Function " (p "Verb-Noun") " {" n> q n "}" >)
(prm "[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]"
     "[string]$" (p "Foobar"))
