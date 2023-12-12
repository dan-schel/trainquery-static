!#/bin/bash

# Clears the contents of the data folder and deletes the existing data.yml file.
rm -rf data/* data.yml

# Zip the contents of the active folder and move it to the data folder.
cd active
zip -r "../data/$(date +"%F").zip" *
cd ../

# Create a new data.yml file that points to the new zip file.
printf "# yaml-language-server: \$schema=https://schemas.trainquery.com/data.schema.json\n\nv1:\n  latest: \"https://static.trainquery.com/data/$(date +"%F").zip\"\n" >> data.yml
