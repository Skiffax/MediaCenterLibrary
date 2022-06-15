<H2>Dir "ansibleskiff"</H2>
contains files that are used by ansible.<br>
<br>- <code>playbook_copy_block_file.yml</code> need for creating directory in remote nodes <code>/var/admin/</code> and copying file <code>notifyskiff</code> into this dir.
<br>- <code>playbook_install_some_programs.yml</code> contain all popular packages for users. Some packages installing by standart way. Some packages need to copy <code>.deb</code>-files and install from it.


<H2>Dir "notifydobm"</H2>
contains scripts:
<br>- <b>time</b> is a script that control remote computers. It can lock/unlock/shutdown remote nodes by number node.
<br>- <b>lock_computer</b> and <b>unlock</b> is scripts needed for correct work of script "<b>time</b>"
<br>- <b>notifyskiff</b> is script that needs to be copied to remote nodes in any path. And the remote node must have a crontab with the interval a minute. This crontab needs to create by hands:<br><code>* * * * * /path_to_the_file_notify_skiff</code>
<br>- <b>expire_date</b> is a file that needs to be copied to remote nodes in path: <code>/var/admin/expire_date</code>. It's file can be created by ansible
