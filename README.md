# SeleniumTestingFramework

Testing framework, developed using Robot Framework and Selenium Library.  
Developed test cases are covering basic scenarios of [olx.pl](https://olx.pl) frontend testing.

## Installation

Execute following command from project root. 

`pip install -r requirements.txt`

## Test Execution

Execute following command in project root to run rest cases.

All test cases from `testcases` directory will be executed, logs will be stored in `logs` directory.  

`robot -d logs testcases/`

To execute single test case use following command.

`robot -d logs testcases/test_olx_login.robot`

## Test Cases

| Test Case Name               | Test steps                                    | Expected Results              |
|------------------------------|-----------------------------------------------|-------------------------------|
| test_olx_login.robot         | Open Olx and login                            | Successful login              |
| test_main_olx_category.robot | Open Olx and check categories on welcome page | Main categories are available |
| test_search_olx.robot        | Open Olx and search for auction               | Search successfully performed |

## References

* [Markdown syntax reference](https://www.markdownguide.org/basic-syntax/)
* [Robot Framework - Documentation](https://robotframework.org/robotframework/)
* [Robot Framework - Selenium Library Keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)