# AutoCleanUp

A highly optimized, silent batch script for Windows that forcefully removes temporary files, crash reports, and residual directory structures (slack space). Designed to run completely in the background without triggering UAC prompts.

## Features

* **Deep Cleaning:** Removes both files and empty directory trees using `rmdir` loops.
* **Zero Interruptions:** Runs invisibly in isolated Session 0 (no CMD windows popping up).
* **Secure Execution:** Utilizes Windows Task Scheduler for SYSTEM-level privileges without lowering global UAC security policies.
* **Diagnostic-Safe:** Leaves critical Event Viewer logs intact for system troubleshooting.

## Deployment (Task Scheduler Method)

To achieve completely silent and secure execution on boot, **do not** place this script in the Windows Startup folder. Follow these deployment steps:

1. Place `AutoCleanUp.bat` in a permanent directory (e.g., `C:\Scripts\`).
2. Press **Win + R**, type `taskschd.msc`, and hit Enter.
3. Click **Create Task...** (Not Basic Task).
4. **General Tab:** 
   * Name the task (e.g., "SystemCleaner").
   * Select **Run whether user is logged on or not**.
   * Check **Do not store password. The task will only have access to local computer resources.**
   * Check **Run with highest privileges**.
   * Configure for: **Windows 10/11**.
5. **Triggers Tab:** Click **New...** and set "Begin the task:" to **At startup**.
6. **Actions Tab:** Click **New...**, set "Action:" to **Start a program**, and browse to your `AutoCleanUp.bat` file.
7. Click **OK** and authenticate with your Windows credentials to save the task.

⚠️ **Warning:** Files are permanently deleted. Use at your own risk.
