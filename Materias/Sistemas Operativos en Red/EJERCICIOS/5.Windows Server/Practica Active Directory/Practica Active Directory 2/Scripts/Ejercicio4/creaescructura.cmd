FOR /F "skip=1 tokens=1-2 delims=," %%a in (fusionDpto.csv) DO (
    dsadd ou "ou=%%a,dc=flarrea,dc=com" -desc "%%b"
)
FOR /F "skip=1 tokens=1-4 delims=," %%a in (fusionUsuarios.csv) DO (
    dsadd user "cn=%%d,ou=%%a,dc=flarrea,dc=com" -fn "%%b" -ln "%%c" -samid "%%d" -upn "%%d@flarrea.com" -pwd "Passw0rd"
)