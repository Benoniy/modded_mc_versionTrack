del %appdata%\.minecraft\mods
mkdir %appdata%\.minecraft\mods
curl -o modlist.cfg https://raw.githubusercontent.com/Benoniy/modded_mc_versionTrack/master/modlist.cfg
for /f "delims=" %%u in (modlist.cfg) do curl --output-dir %appdata%\.minecraft\mods -OLs "%%u"
