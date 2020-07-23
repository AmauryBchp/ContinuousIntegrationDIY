cd "${0%/*}/.."

# let's fake failing test for now 
echo "Running tests"
echo "............................" 
dotnet test
exit