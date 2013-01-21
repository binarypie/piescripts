export OLD_EMAIL=$1;
export NEW_EMAIL=$2;
git filter-branch --env-filter '
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ];
then
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL";
fi
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ];
then
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL";
fi
' HEAD
