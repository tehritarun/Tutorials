## Summary

Getting your new Mac up and running is a breeze and a blast! Once you’ve got the basics sorted, I usually dive into these settings. They’re essential for everyone to check out on their Mac, so make sure you do!
## App dock

1. **Remove unnecessary apps**: By default mac comes with lots of apps added to the Dock, since we don’t use all those apps in day to day use. It’s a good idea to remove those apps from the Dock for a distraction free environment. This can simply be done by dragging the app out of dock and let go when remove label appears.
   ![[desktop_dock.jpeg]]

2. **Dock position on screen**: By default Dock position is set at bottom of screen. This can be set to any side based on your workflow.
3. **Minimise window animation**: on new mac this is set as genie. Which shows classic genie effect while minimising any app window. Although this animation is quite slow. If you want snappier experience, set this to scale effect.
4. **Windows title bar double-click action**: By default, this option zooms, which isn’t quite the same as maximising. Sometimes, when you double-click the title bar, the window doesn’t maximise but instead takes about 70 per cent of the screen. To always make the app window maximise, set this option to **fill**.
5. **Automatically hide and show the Dock**: if you have 13 inch MacBook then screen real state is quite important. Consider turning on this setting. This will hode dock automatically when we are not using it. To make it appear hover cursor at bottom (or wherever dock position is set) of screen. Dock will reappear.
6. **Remove recent and suggested app from dock**: if you want a cleaner Dock, consider turning off this option. Recent app will not linger around in your dock.
7. **Tiled windows have margin**: With macOS Sequoia, you can now tile your app windows like on Windows. However, if you have this option enabled, macOS will leave a gap between the app windows, which might not be ideal, especially if you have a smaller screen. To save space, it is a good idea to turn this option off.
8. **Update hot corner action**: Whenever you move the cursor to any corner, you can trigger actions like opening a quick note or showing the desktop. If you want, you can add a hot corner action to any corner or turn it off completely. To set this up, go to System Settings > Desktop & Dock and then click on the Hot Corners button.
   ![[desktop_dock_2.jpeg]]

---
## Finder settings

By default, Finder has a very simple view, which means some useful options are hidden. Here are a few you can easily enable to make your setup more productive. While you are in the Finder app, just go to the View menu and enable the following options:

- Show path bar
- Show status bar
- Tab bar
- Tool bar
  
  ![[finder_view_menu.jpg]]

For further customising finder app go to finder settings by clicking finder in menubar and clicking settings or by simply pressing  `⌘,`.
- **Path at the startup**: This lets you specify a path that Finder will open each time you launch it.
  ![[finder_settings_1.jpg]]
- **Show filename extension**: When you turn this on, Finder will display the file extensions for every type of file.
  ![[finder_settings_3.jpg]]
- **Side bar**: From this tab, you can pick which items you want to see in the sidebar of Finder. You can also drag and reorder sidebar items right there in the sidebar.
  ![[finder_settings_2.jpg]]
---
## Other Settings

- **Show Battery percentage**: When you get a new Mac, the battery icon might only appear on the right side of the menu bar. To switch on the battery percentage display, simply head to System Settings > Menu Bar > Battery Option. And while you’re there, feel free to add or remove items from the menu bar, such as AirDrop or Weather.
  ![[menu_bar.jpg]]

- **Charge Limit**: To help your MacBook’s battery last longer, you can set a charge limit. This way, you can stop the battery from charging past a certain point, which will help it stay in good shape for longer.
  ![[charge_limit.jpg]]

- **Touchpad Tap to select**: The **Tap to Select** setting on a Mac touchpad allows you to perform a click by simply tapping the surface of the trackpad with one finger. When enabled, it eliminates the need for physically pressing down on the trackpad, making navigation quicker and more seamless.
  ![[tap_to_click.jpeg]]

- **Set screen shot type to jpg** to avoid generating bigger screen shot files. You cannot set this using the GUI. Instead, you need to open the terminal and run the following command.
``` bash
defaults write com.apple.screencapture type jpg
```

## Wrapping Up

Your Mac comes with great defaults, but it's the small tweaks that unlock its full potential. These essential settings provide a solid foundation for a faster, safer, and more enjoyable experience. As macOS evolves, it's always worth revisiting your settings to take advantage of new features and improvements. Happy customizing!