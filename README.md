## How to use:

clone down this repo:

```shell
git clone https://github.com/jonsjava/random.git
```

edit test cases.  tests go on left, expected return values on the right:

`true` = "this should be good"

`false` = "this should be a bad test"

```
((())) true
))() false
```

Finally, run the script: `./grade_exam.sh`

example output based on what is currently in `test_cases.txt`:

```
Test case: '()('
    expected: false
    received: false
    result: PASS
==========================================
Test case: '(())'
    expected: true
    received: true
    result: PASS
==========================================
Test case: '(()))'
    expected: false
    received: false
    result: PASS
==========================================
Test case: '(())(((())))'
    expected: true
    received: true
    result: PASS
==========================================
Test case: '(((())))'
    expected: false
    received: true
    result: FAIL
==========================================
```

You'll notice that the final test SHOULD be true, but is set to false.  This is to show you that if the my function does not match what you expect, it will mark it as `FAIL` -- A.K.A. "proving it doesn't auto-pass everything"
