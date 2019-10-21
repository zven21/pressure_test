# PressureTest

To start your Phoenix server:

* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.setup`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`

Test pressure with apache ab: `ab -n 2000 -c 500 http://dev-m.helijia.com:4000/posts`

Solve the pressure bottleneck through two aspects:

* Pool size and queue target for database connections
* Add cache

Pressure measurement result:

    # pool_size: 10, queue_target: 50
    Complete requests:      2000
    Failed requests:        467
    Requests per second:    153.79 [#/sec] (mean)
    Time per request:       3251.197 [ms] (mean)

    # pool_size: 10, queue_target: 200
    Complete requests:      2000
    Failed requests:        273
    Requests per second:    141.60 [#/sec] (mean)
    Time per request:       3531.116 [ms] (mean)

    # pool_size: 20, queue_target: 200
    Complete requests:      2000
    Failed requests:        268
    Requests per second:    141.02 [#/sec] (mean)
    Time per request:       3545.704 [ms] (mean)

    # pool_size: 40, queue_target: 200
    Complete requests:      2000
    Failed requests:        159
    Requests per second:    141.95 [#/sec] (mean)
    Time per request:       3522.346 [ms] (mean)

    # pool_size: 10, queue_target: 50 + cachex
    Complete requests:      2000
    Failed requests:        0
    Requests per second:    394.64 [#/sec] (mean)
    Time per request:       1266.990 [ms] (mean)
