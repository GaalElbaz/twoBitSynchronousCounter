# twoBitSynchronousCounter
A two-bit synchronous counter is a digital circuit that counts in binary from 00 to 11 using two flip-flops. It operates in sync with a clock signal, advancing its count on each clock edge. This type of counter is synchronous, meaning that the flip-flops change states simultaneously, ensuring proper timing and avoiding glitches.

Operation:
Initially, the counter is in the state 00.
On each clock negedge, the counter advances to the next binary state: 01, 10, and 11.
The binary count wraps around to 00 after reaching 11, creating a cyclic counting sequence.
Timing:

The synchronous nature ensures that both flip-flops change states at the same time, avoiding glitches or undesired transitions.
The counter responds to the clock signal, making it synchronous with the system clock.
Applications:

Two-bit counters are basic building blocks in digital circuits and are often used in larger counters and sequential logic circuits.
They are fundamental in applications where counting or sequencing is required, such as in control units, timers, or frequency dividers.
Truth Table:

mathematica
Copy code
Clock  | Q1 | Q0 | Next State
-------|----|----|------------
Rising | 0  | 0  | 0 0
Rising | 0  | 1  | 0 1
Rising | 1  | 0  | 1 0
Rising | 1  | 1  | 1 1
In summary, a two-bit synchronous counter is a basic binary counter with two states, counting through 00, 01, 10, and 11 in a cyclic manner. It provides a simple way to understand and implement sequential digital logic circuits.
