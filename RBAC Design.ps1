//RBAC Design Using  AGDLP model:
//A = Accounts (Users)
//G = Global Groups
//DL = Domain Local Groups
//P = Permissions
User Group Access
HR User	>> HR_Users	Read  >> HR Folder
IT Admin >>	IT_Admins >> 	Full Control
User → HR_Users -> 
HR_Users → HR_Read_Access
HR_Read_Access → Folder permission


New-ADGroup -Name "HR_Users" -GroupScope Global
New-ADGroup -Name "HR_Read_Access" -GroupScope DomainLocal
