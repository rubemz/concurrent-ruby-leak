# TimerThread Leak

A simple ruby script to show a thread leak on concurrent-ruby

Run:

```
bundle install
ruby timerThreadLeak.rb
# see the output that shows the number of threads increasing
```

In order to check the fix, uncomment the line that adds `concurrent-ruby` from
`rubemz` repository and comment the next line that adds the `concurrent-ruby`
as dependency. Run `bundle update` and run:

```
ruby timerThreadLeak.rb
```

See that the threads aren't leaking anymore.
