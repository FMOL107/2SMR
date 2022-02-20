dsadd ou ou=CURSO,dc=flarrea,dc=com
FOR /F "skip=1 tokens=1-3 delims=," %%a in (curso.csv) DO (
dsadd user "cn=%%c,ou=CURSO,dc=flarrea,dc=com" -fn "%%a" -ln "%%b" -samid "%%c" -upn "%%c@flarrea.com" -pwd "Passw0rd"
)