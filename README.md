### UTU_EndTask

Hard to find a task in the top command in the terminal?

just run this script find a similar task and kill by PID 

### To make this script run by just writing endtask in the terminal follow this instruction 

### To make the script executable:

Open a terminal and navigate to the directory where your script is located. Then, make the script executable by running:

```bash
chmod +x endtask.sh
```

Run the script from anywhere:

If you want to run your script from any directory, you can move it to a directory that's in your PATH, like /usr/local/bin. This way, you can run your script like a regular command. 

Here's how to do it:

```bash
sudo mv endtask.sh /usr/local/bin/endtask
```
Note that we've removed the .sh extension - this is a common convention when moving scripts to bin directories.

After doing this, you should be able to run your script from anywhere just by typing endtask.

