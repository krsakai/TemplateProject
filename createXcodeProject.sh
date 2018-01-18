export LANG=C

# Check arguments
if [$# -ne 2 ]; then
  echo "[Error]: 2 arguments are necessary."
  echo "[Usage]: $0 TEMPLATE_NAME PROJECT_NAME"
  exit 1
fi

# Parameters

projectPath=$1
projectName=`basename $projectPath`

# Copy template

cp -R ../TemplateProject ../$projectPath

# Rename file and folder

paths=`find -d ../$projectPath -name "*TemplateProject*"`
for path in $paths
do
  replacePath=`dirname $path`/`basename $path | sed "s/TemplateProject/$projectName/g"`
  mv $path $replacePath
done

# Replace file texts

files=`find ../$projectPath -type f -print`
for file in $files
do
  sed -i '' -e "s/TemplateProject/$projectName/g" $file
done
