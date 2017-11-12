makeproject()
{
  if [ $1 == "-h" ]; then
    echo "usage: makeproject [destination path] [project name]"
  else
    echo "$1"
    echo "$2"

    m_root="$1"
    m_root+="/"
    m_root+="$2"

    mkdir "$m_root"

    # Never change the code above

    mkdir "${m_root}/Arts"
    mkdir "${m_root}/Arts/Images"
    mkdir "${m_root}/Arts/Images/PSD"
    mkdir "${m_root}/Arts/Images/RAW"
    mkdir "${m_root}/Arts/Images/Ref"

    mkdir "${m_root}/Arts/Layouts"
    mkdir "${m_root}/Arts/Layouts/client"
    mkdir "${m_root}/Arts/Layouts/ref"

    mkdir "${m_root}/Arts/Vectors"
    mkdir "${m_root}/Arts/Vectors/AI"
    mkdir "${m_root}/Arts/Vectors/CDR"

    mkdir "${m_root}/Arts/Output"
    mkdir "${m_root}/Arts/Output/print"
    mkdir "${m_root}/Arts/Output/web"

    mkdir "${m_root}/Arts/Publishing"
    mkdir "${m_root}/Arts/Publishing/content"

    mkdir "${m_root}/Code"
    mkdir "${m_root}/Code/Web"
    mkdir "${m_root}/Code/Web/sites"
    mkdir "${m_root}/Code/Web/sites/backup"
    mkdir "${m_root}/Code/Web/sites/baseImages"
    mkdir "${m_root}/Code/Web/sites/code"

    mkdir "${m_root}/3D"
    mkdir "${m_root}/3D/data"
    mkdir "${m_root}/3D/render"
    mkdir "${m_root}/3D/scenes"
    mkdir "${m_root}/3D/textures"
    mkdir "${m_root}/3D/zbrush"

    mkdir "${m_root}/Documents"

    mkdir "${m_root}/Fonts"

    mkdir "${m_root}/Movies"
    mkdir "${m_root}/Movies/Projects"
    mkdir "${m_root}/Movies/Compositing"
    mkdir "${m_root}/Movies/Captured"
    mkdir "${m_root}/Movies/Output"

    {
    	echo "Project Name: $2"
    	echo "Date Created: $(date +"%d-%m-%Y")"
    } > "$1/$2/_$2_Info.txt"

    echo "created: $1$2"
  fi
}
