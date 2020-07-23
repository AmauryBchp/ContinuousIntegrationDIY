cd "${0%/*}/.."

echo "Test"
# let's fake failing test for now 
echo "Running tests"
echo "............................" 
dotnet test
exit