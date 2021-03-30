# Testing Tool

### Usage

Just write insertion tests like `INSERT INTO...` into `tests.sql`, the number of insert's should match the number of errors generated. (If a insert shouldn't cause an error simply add a leading whitespace i.e ` INSERT INTO...`)

Run

```sh
./test.sh
```

The output will be sent to `test_output.txt`