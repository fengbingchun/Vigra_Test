# CMake generated Testfile for 
# Source directory: E:/GitCode/Vigra_Test/vigra-1.10.0/test/classifier
# Build directory: E:/GitCode/Vigra_Test/build/test/classifier
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_classifier "E:/GitCode/Vigra_Test/build/test/classifier/run_test_classifier.bat" "$(Configuration)")
add_test(classifier_speed_comparison "E:/GitCode/Vigra_Test/build/test/classifier/run_classifier_speed_comparison.bat" "$(Configuration)")
subdirs(data)
