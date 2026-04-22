New-ADUser -Name "Alice Smith" `
-SamAccountName asmith `
-UserPrincipalName asmith@mMangoBanana.local `
-AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
-Enabled $true
