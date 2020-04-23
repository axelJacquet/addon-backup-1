<p align="left">
<img src="jelastic-logo.svg" width="100">
</p>

# Add-on SwissBackup 

A dedicated solution for all of your Jelastic nodes allowing the simple configuration of backup plans for
each of your containers. Using the reliability of the infrastructures dedicated to SwissBackup, all your data is
encrypted (end-to-end) and replicated 3 times in 3 differents geographic locations. You can easily restore a backup
on any node in your account.

You have 90 free days of Swiss Backup product. You can easily obtains your account in Infomaniak manager.

First step:

<p align="left">
<img src="images/device.png" width="400">
</p>

Choice Free storage space:

<p align="left">
<img src="images/storage.png" width="400">
</p>

You can see your Swiss Backup credentials here and in your email:

<p align="left">
<img src="images/credentials.png" width="400">
</p>


## Backup Process

There are 2 types of backups possible.

### Back-up specific folders
<img src="images/folders.png" width="400">

When you select "Back-up specifics folders "the "Folders to back-up" field appears. This allows the specification
of the folders to save, you can specify several folders (separate each path with a ","). You must enter the absolute path of each folder that you want to save.

Example : /root/admin/, /home/user1/, /jelastic/containers/

In this example 3 folders have been specified.

After specifying these folders, you must select a backup plan.



### Snapshot of the whole container
<img src="images/snapshot.png" width="400">

When you select "Snapshot of the whole container" the "Backup all file system" field appears.
This allows you to save the entire file system of your container.

### Backup policies

2 backup policies are available:

    - Daily 
    
    - Hourly
    
Daily provides a backup of your files once a day at 11:00 p.m.

Hourly provides a backup of your files every hour (at the start of the hour at 1:00 p.m. for example)

### Backup retention

You can adjust **lifetime** of your backups.

You can define the lifespan of your backups with years, months, days and hours
Example:

You backup your filesystem with Hourly policie and you choice 1 years 2 month 4 days 2 hours.
So you first backup is done at 14:00 pm, each our retention policie is check ( 1 years 2 month 4 days 2 hours ) and if backups are older than 1 years 2 month 4 days 2 hours there are deleted.

## Restoration Process

When selecting "Restore your data" these fields appear.

<p align="left">
<img src="images/restoration.png" width="400">
</p>

In the same way as for backups, you must specify your SwissBackup ID and password
associated.

The drop-down list displays the containers in which backups are present.
You just have to choose the container for which you want to restore the data.

<p align="left">
<img src="images/select-nodes.png" width="400">
</p>

After selecting the container, the corresponding backup plan appears.

<p align="left">
<img src="images/select-backups.png" width="400">
</p>

Just select the backup you want to restore, the directory where you want restore the backup and choose in which environment you want to restore your data.

## Backups modification 

If you want to modify the saved files, simply restart the addon from the marketplace. The automation of the saved files will be updated.

## Delete backups directly in your nodes (CLI)

first step : ``` . /home/.config/swissbackup/openrc.sh ```

second step: ``` restic snapshots (see all your backups) ```

third step: to delete one backup : ```restic forget IdBackup --prune ```


            to delete all backup of one file except one (security feature) ```restic forget --tag folders --keep-last 1 --prune```

<p align="left">
<img src="images/CLI-backups.png" width="400">
</p>

