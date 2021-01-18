$logpath = "D:\Rsync____Backup\ScheduleLog\"
$now = get-date
write-output $now
	
    cd "C:\Program Files (x86)\cwRsync\bin"
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "..................................Rsync__Start___Backup.............................. : $now"
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "  "
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "  "
    .\rsync.exe -vrtopgP --size-only --whole-file --progress ******需要替换的IP地址******::backupdatabases      /cygdrive/D/Databases____Backup/DB__MSsql__******需要替换的IP地址******__Backup/
    $now = get-date
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "Rsync____******需要替换的IP地址****** Complete. now : $now"
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "................................Rsync__Complete___Backup.............................. : $now"
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "  "
    Add-Content -path "$logpath\Rsync__******需要替换的IP地址******__Sql_Backup__log.txt" -value "  "