$logpath = "D:\Rsync____Backup\ScheduleLog\"
$now = get-date
write-output $now
	
    cd "C:\Program Files (x86)\cwRsync\bin"
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "..................................Rsync__Start___Backup.............................. : $now"
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "  "
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "  "
    .\rsync.exe -vrtopgP --size-only --whole-file --progress ******��Ҫ�滻��IP��ַ******::backupdatabases      /cygdrive/D/Databases____Backup/DB__MSsql__******��Ҫ�滻��IP��ַ******__Backup/
    $now = get-date
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "Rsync____******��Ҫ�滻��IP��ַ****** Complete. now : $now"
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "................................Rsync__Complete___Backup.............................. : $now"
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "  "
    Add-Content -path "$logpath\Rsync__******��Ҫ�滻��IP��ַ******__Sql_Backup__log.txt" -value "  "