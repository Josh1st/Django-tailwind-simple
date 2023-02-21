@REM run.bat
@REM this line forces the cmd to stay open on error so that you can diagnose problems
@REM source: https://stackoverflow.com/questions/17118846/how-to-prevent-batch-window-from-closing-when-error-occurs
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )

@REM create the CSS file
cmd /c "npx postcss ./app/static/styles.scss -o ./app/static/styles.css -m --config ./postcss.config.cjs"

@REM open vscode, activate the python env, cd into app, run migrations, run test server
cmd /k "code . && env\Scripts\activate.bat && cd app  && python manage.py makemigrations && python manage.py migrate && python manage.py runserver"


@REM pause the execution if any of the above failed otherwise the cmd will just close
pause