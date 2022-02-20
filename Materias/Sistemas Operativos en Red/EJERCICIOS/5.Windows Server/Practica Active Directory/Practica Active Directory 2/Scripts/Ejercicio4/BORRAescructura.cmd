FOR /F "skip=1 tokens=1-2 delims=," %%a in (fusionDpto.csv) DO (
    dsrm ou=%%a,dc=flarrea,dc=com -subtree -noprompt
)