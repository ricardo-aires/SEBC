# Doing the Math

1. Plug the hardware numbers for your cluster into the spreadsheet.

1. Explain any adjustments you make.

    I've changed the value of reserved memory for the OS to 8 GB, in this use case it should be enough. The same applies to `vcores` which was changed to 1.

1. What criteria affects workload factor? What does a value of 1, 2, or 4 signify?

    The workload factor is based on the expected number of concurrent threads:

    - `1` for CPU intensive tasks
    - `2` Balanced / common setup
    - `4` for standard I/O bound tasks.

    It will affect the value calculated for `-D mapreduce.job.maps` and `mapreduce.job.reduces` over the `Gateway Settings`. 

    With this kind of input we only see a variation between `1`, sets to `10` each, and `2` and `4`, sets to `15` each.

1. Capture your finished worksheet as a screenshot.

    ![Finished worksheet](1_YarnCalcs.png)