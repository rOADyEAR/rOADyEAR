echo " ------START PUSH---------"

echo " ------Add-----------"
git add *

echo " ------Commit------"
set now=%date% %time%
echo "Time:" %now%
git commit -m "%now%"

echo " ------PULL REMOTE---------"
git pull

echo " ------PUSH REMOTE---------"
git push --set-upstream origin master
