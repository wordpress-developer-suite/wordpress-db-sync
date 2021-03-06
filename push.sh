# Update line 3 with your database name, user name, and password
echo 'Exporting database from MySQL...';
mysqldump --user='user' --password='password' db_name > ./db/data.sql

# Comment out lines 6-11 below if not syncing with git
echo 'Committing database to git...';
git add -A
git commit -m 'Updated database';

# Optional push to Github using simple push method
git push
echo 'Backup complete!';
