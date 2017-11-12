# Project Creator
This is a automator script and a Shell script to make your start project folder structures.

#### Usage automator version (Only macOS)
+ [Download the automator script][0].
+ Unzip dmg image.
+ Double click Project Creator.dmg.
+ Drag Project Creator to Applications (Optional).
+ Run Project Creator.
+ Choose your Project Name.
+ Choose the host directory.

#### Usage Shell script version
+ [Download Source code (zip)][0].
+ Unzip.
+ Open the Terminal.
+ Navigate to unzipped directory
+ Load the script with command below.

```Shell
$ source Make_project.sh
```

#### Usage Example
+ Syntax: makeproject [destination path] [project name]

```Shell
$ makeproject ~/Desktop "My new project"
```

#### Extra
+ Add to .bash_profile to automatic load the script.

```Shell
if [ -f ~/Download/Make_project.sh ]; then
  source ~/Download/Make_project.sh
  echo "Make_project successfully loaded."
fi
```

+ Restart Terminal or source .bash_profile.

```Shell
$ source ~/.bash_profile
```

#### Customize the folder structures
+ For Automator version
  + Open automator
  + Load Project Creator app file.
  + Edit Run Shell Script command, see the example below.
  ![Automator version](https://snag.gy/gtKZhy.jpg)


+ For the Terminal version:
  + Open Make_project.sh and edit mkdir command, see the example below.

```Shell
mkdir "${m_root}/Level 0"
mkdir "${m_root}/Level 0/Level 1"
mkdir "${m_root}/Level 0/Level 1/Level 2"
mkdir "${m_root}/Level 0/Level 1/Level 2/Level 3"

```

[0]: https://github.com/andreagen0r/ProjectCreator/releases
