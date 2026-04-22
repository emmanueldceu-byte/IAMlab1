New-ADOrganizationalUnit -Name "CompanyUsers" -Path "DC=MangoBanana,DC=local"

New-ADOrganizationalUnit -Name "HR" -Path "OU=CompanyUsers,DC=MangoBanana,DC=local"
New-ADOrganizationalUnit -Name "IT" -Path "OU=CompanyUsers,DC=MangoBanana,DC=local"
New-ADOrganizationalUnit -Name "Finance" -Path "OU=CompanyUsers,DC=MangoBanana,DC=local"
