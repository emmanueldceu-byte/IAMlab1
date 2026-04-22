//HR → Finance
Move-ADObject -Identity "CN=Alice Smith,OU=HR,OU=Users,DC=MangoBanana,DC=local" `
-TargetPath "OU=Finance,OU=Users,DC=MangoBanana,DC=local"
