cd "${0%/*}/.."

# let's fake failing test for now 
echo "Running tests"
echo "............................" 
echo "Failed!" && exit 1

# example of commands for different languages
# eslint .         # JS code quality check
# npm test         # JS unit tests
# flake8 .         # python code quality check
# nosetests        # python nose 
# just put your usual test command here 