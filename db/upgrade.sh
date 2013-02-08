#! bash 

TIME=$(date +%y_%b_%d_%a_%k%m_%S)
FILES=0.1/*

# Make a backup from the database first
# Zip it and store it in a non versioned directory
# TODO make database an option for cli
/usr/local/mysql/bin/mysqldump -u root twitterMine | gzip > ../../database_backup/twitterMine_$TIME.sql.gz

for f in $FILES
do
  if [ -f "$f" ]; then
      echo "Processing $f file..."
      # take action on each file. $f store current file name
      /usr/local/mysql/bin/mysql -u twitterMine twitterMine < $f

  fi

done
  echo "#####################"
  echo "Done"