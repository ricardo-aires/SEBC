# Tuning for YARN

## Slowest Run

The slowest run, for both `terasort` and `teragen`, happened when:

```code
map containers= 4
map JVM heap= 1638
map task memory= 2048
reduce containers= 1
reduce JVM heap= 1638
reduce task memory= 2048
start teragen

real    2m15.650s
user    0m6.157s
sys     0m0.800s
start terasort

real    6m22.323s
user    0m9.349s
sys     0m0.966s
Deleted /results/tg-10GB-4-1-2048
Deleted /results/ts-10GB-4-1-2048
```

## Fastest Run

### Terasort

The fastest `terasort` was when using:

```code
map containers= 8
map JVM heap= 409
map task memory= 512
reduce containers= 4
reduce JVM heap= 409
reduce task memory= 512
start teragen

real    2m5.674s
user    0m5.953s
sys     0m0.750s
start terasort

real    3m33.033s
user    0m8.074s
sys     0m0.908s
Deleted /results/tg-10GB-8-4-512
Deleted /results/ts-10GB-8-4-512
```

### Teragen

The fastest `teragen` occurred at:

```code
map containers= 8
map JVM heap= 819
map task memory= 1024
reduce containers= 4
reduce JVM heap= 819
reduce task memory= 1024
start teragen

real    2m13.033s
user    0m5.800s
sys     0m0.738s
start terasort

real    3m4.481s
user    0m8.632s
sys     0m0.882s
Deleted /results/tg-10GB-8-4-1024
Deleted /results/ts-10GB-8-4-1024
```