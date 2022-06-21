# Visual Basic in Unity

 This repository contains a Unity project file, a "setup" or "template" of sorts, that lets you write 2D or 3D games in Unity with Visual Basic .NET rather than (or alongside) C#.

 As a Mono-based engine with the ability to load and execute `.dll` files, Unity is inherently compatible with all languages running on .NET / Mono. This is because all .NET languages can compile into DLL files and use references to DLL files in other .NET projects, regardless of language used. For example, suppose you have a C# project and a VB.NET project. If you build your C# code into a DLL, you can then go to the VB.NET project, add references to the C# DLL, and then access functions, objects and the like from your C# code. The reason why this is possible is because all .NET / Mono languages compile down into the same intermediate language, just like how Java, Kotlin, Scala, Clojure, etc all compile down into the same bytecode (and hence can use each others' libraries).

 In Unity, this allows you to freely run any .NET code built into a DLL. A small, but dedicated community has formed around the use of F# to write Unity games this way (examples: [1](https://github.com/ChrisPritchard/2d-games-with-unity-in-fsharp), [2](https://github.com/AugustDailey/Time-Runner), [3](https://github.com/cedretaber/2d-shooting-game)), and similar approaches are used for other languages, such as the CLR ports of [Clojure](https://github.com/arcadia-unity/Arcadia) (example projects: [1](https://github.com/MysteryMachine/if-a-tree-falls-in-the-forest), [2](https://github.com/clojurecup2014/parade-route)) and of [C++](https://github.com/jacksondunstan/UnityNativeScripting). 

 Currently, this repository only contains the essentials to get you started; there is no example game, beyond a very simple Hello World script. I will make an example game with Visual Basic .NET eventually, and when I do, I will update this repository with a link to it.

 # Usage

 After cloning this repository, you may add the entire folder to the Unity Hub so you can launch it from there. You'll likely want to rename the project altogether (both in Project Settings and the folder), since I can't imagine you'll want to call your game "VisualBasicInUnity". 

 From the root of the project folder (i.e. where your Assets, Library, Packages ... folders are), navigate to `/VB/VB` and open the project file (`VB.vproj`). You can then start editing `Script.vb` to your heart's content. 

 You may build the project into a DLL at will by hitting Ctrl - Shift - B on your keyboard. This will spit out _one_ DLL, `VB.dll`, as well as two assorted files (`VB.pdb` and `VB.deps.json`), into `/bin/debug/net5.0/` (where `.net5.0` may be replaced by the version of .NET you use). You then have to copy these files into your assets folder. To prevent you from having to manually do this whenever you build the DLL, I have included a PowerShell script in the repository (next to the VB solution file), which you can run from PowerShell by typing `.\Autocopy.ps1` (ensure that you do this in `VisualBasicInUnity\VB`). On Mac or Linux, you must first install PowerShell and then, in the command terminal, type `pwsh` to open up the PowerShell console, whereafter you can run the script.
 
 Then, in the Unity Editor, you may open `VB.dll` (click the arrow icon next to the file with the puzzle piece as icon), whereafter all code files you created under the project "VB" will be revealed. There will be one script for every code file in your project; for example, if you have the files `Script1.vb` and `Script2.vb` in the project "VB" and build the DLL, you will see "Script1" and "Script2" when opening the VB DLL in the editor. You can then do whatever you please with the scripts, like dragging them onto stuff in your scene.

 When you first open the project, the default camera will have the default script (`Script.vb`) attached to it as demo, so when you test the game, the console will output "Hello, world!" until you remove or rewrite the script.

 # Important notes

- __Ensure that ALL `subs` are set to `public`__, otherwise they will not work after compilation.
- All code files must inherit from MonoBehaviour (`inherits MonoBehaviour`).
- The line `imports UnityEngine` must be present atop every code file.
- Internally, C# and VB.NET function virtually identically to one another, having the exact same performance, speed and inner workings. They also have ~ 98% feature parity; with a mere dozen exceptions (most of which are minor or which you can work around easily), there exists an equivalent in one language for everything that exists in the other. This similarity is such that C# and VB.NET code can be automatically converted to the other language (through online websites you can google, for example) and still do the exact same thing in the exact same way with the exact same speed and semantics; they're essentially "skins" of each other in gaming terms. __Hence, if you're stuck, you can ask and receive help in C# and then convert it to VB.NET__. 

# License

There's really nothing "unique" about this project that I feel the need to be "credited" for or have "copyright" over, so this project essentially has no license; not because I can't be bothered to add one, but because this repository simply doesn't need one. It is, after all, just a Unity project with a basic VB.NET project containing references to the UnityEngine DLL's. There is no unique code in this project other than a basic Hello World snippet and all the other setup I did here is reproduced all the time by Unity's F# users. Hence, there is effectively nothing to license. Just take this project and do whatever the hell you want with it. 

If you wish to, you may "attribute" me, in a way, by linking to this repository and mentioning that this is what got you started, but this is purely an optional thing that you may do if you think I did a good job and / or if this helped you. You don't have to do this if you don't feel like it. If you actually decide to use this for a game (as in, beyond just a basic testing project that never sees a public release anywhere), I'd love to hear it! Again, though, you decide how you deal with me when using this. If you'd rather not inform me and just get to work, that's fine, too. Informing me is greatly appreciated, but not strictly necessary or even expected. Your game, your volition.

