# wordpress-db-sync
> Shell scripts for syncing WordPress MySQL databases via Git

- Simple setup and usage
- Sync between local and remote installations
- Sync across multiple team members for local development 

## Installation
Install a copy of the scripts on each machine you would like to sync
```shell
$ cd wordpress
$ git clone git@github.com:micjamking/wordpress-db-sync.git db
```
_**Make sure to change the folder name during `git clone` to match the `db` directory in the scripts**_

## Usage

After cloning the scripts in to your wordpress directory, update [`pull.sh`](pull.sh), [`push.sh`](push.sh), and [`update.sql`](update.sql) using your specific WordPress installation's MySQL database name, user name and password following the comments in each file.

The update and backup commands are run from the main wordpress directory (ie. outside of the `db/` directory).

#### Updating from git (pull.sh)

```shell
$ sh db/pull.sh
```

#### Backing up to git (push.sh)

```
$ sh db/push.sh
```

## Details
- These scripts assume each WordPress installation is being managed/deployed using Git. However, they can still be used without Git to simply import/export databases via the command-line by commenting out the git commands in `pull.sh` and `push.sh`. 
- The scripts look for & create a database SQL file called `data.sql` in the `db/` directory.
- While these scripts assume the database is backed up & managed via Git, the scripts themselves should be ignored from git (since they can contain sensitive information). 

You can use the following pattern in your `.gitignore` file:
```git
!db/
db/*
!db/data.sql
```
This will include the `db/` directory itself, but ignore everything inside of it except for the `data.sql` file created during syncing.

## License
[MIT](LICENSE) © Mike King yo@mikeking.io
