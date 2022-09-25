function openPrLink() {
   github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's%\.git$%%' | awk '/github/'`;
   branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
   pr_url=$github_url"/compare/main..."$branch_name
   open $pr_url;
 }

# Run git push and then immediately open the Pull Request URL
function openPr() {
   git pull origin HEAD
   git push origin HEAD

   if [ $? -eq 0 ]; then
     openprlink
   else
     echo 'failed to push commits and open a pull request.';
   fi
}
