# Firefox Removal Script

This script forcefully removes Firefox from a Kubuntu-based system. It ensures that:
- Both the APT and Snap versions of Firefox are uninstalled.
- Residual files, directories, and caches are cleaned up.
- Firefox is removed from application menus and launchers.
- System-wide configurations are purged.

## Usage

To remove Firefox in one step, run the following command in your terminal:

```bash
wget -qO- https://raw.githubusercontent.com/1999azzar/firefox-remover-script/main/firefox_remover.sh | bash
```

### Step-by-Step Explanation

1. **Download and Execute**
   The script is downloaded using `wget` and executed immediately using `bash`.

2. **Privileges Required**
   The script requires `sudo` permissions to uninstall Firefox and remove system-wide files.

3. **Safe to Use**
   The script only targets Firefox-related files and configurations. Other system files and applications remain unaffected.

---

## Contributing

Feel free to contribute improvements or suggest changes via pull requests.

---

## Disclaimer

This script is provided "as-is" without any warranty. Use at your own risk. Always review the script before running it.
