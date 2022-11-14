wget -o mods.cfg https://raw.githubusercontent.com/Benoniy/modded_mc_versionTrack/master/modlist.cfg


foreach($line in [System.IO.File]::ReadLines("mods.cfg"))
{
    Write-Output $line

    $datePattern = [Regex]::new('([^\/]+$)')
    $matches = $datePattern.Matches($line).Value
    Write-Output $matches

    wget -o $matches $line
}


rm mods.cfg