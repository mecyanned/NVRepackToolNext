# NVIDIA Driver Repack Tool Next

 1. Install [AutoHotkey](https://www.autohotkey.com/download/ahk-v2.exe) and download [this repository](https://github.com/alanfox2000software/NVRepackTool/archive/refs/heads/main.zip).
 2. Place the downloaded .exe driver files in the Temp\Input folder.
 3. Edit the `config.ini` file and modify the following variables. Set them to 0 to remove the corresponding file(s), or set them to 1 to add/keep those file(s).
   - `pi_nvfbcwrp` [nvfbcwrp32.dll, nvfbcwrp64.dll](https://github.com/keylase/nvidia-patch/tree/master/win/nvfbcwrp)
   - `pi_nvfbc` NvFBC.dll, NvFBC64.dll, NvFBCPlugin.dll, NvFBCPlugin64.dl
   - `pi_nvifr` NvIFR.dll, NvIFR64.dll
   - `pi_nvifropengl` NvIFROpenGL.dll, NvIFROpenGL64.dll
 4. Run `1. Extract.ahk`, all drivers will be extracted to the Temp\Extract folder.
 5. Run `2. Patch.ahk`, it will cleanup .inf and nvi files.
   - [Optional] Follow [this guide](https://github.com/keylase/nvidia-patch/tree/master/win) if you want NVENC patch. Copy `nvencodeapi64.dll` and `nvencodeapi.dll` located at `Temp\Extract\{driver folder}\Display.Driver` folder to `Temp\Extract\{driver folder}\NVENC`. Select those files under the `NVENC` folder for patching.
   - [Optional] Run the `"3. ##bit Dolby Digital Live Mod.bat"` obviously 32bit for 32bit and 64bit for 64bit
5. Go to the Temp\extract\your driver base and run Launch.bat as admin and once it loads the gui select Xtreme-G button and hit yes, then press NVFBCEnable and close it
Download [NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/)
Run NVCleanstall and select "Use driver files on disk" and browse and then select the setup.exe thats located in Temp\Extract and press next
Press "All" and then next and copy whats done on "NVCleanstall.png"
Press "Build Package" and done

Credits To:
@alanfox2000software for making the [original tool](https://github.com/alanfox2000software/NVRepackTool)
Mecyanned (for updating it a bit and automating the dolby digital live install)
Techpowerup for NVCleanstall
