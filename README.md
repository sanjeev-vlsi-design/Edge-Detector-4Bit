Edge Detector
Overview
The Edge Detector is a digital circuit designed to identify transitions (edges) in a signal. It detects rising edges, falling edges, or both (dual edges) in an input signal. This is a fundamental building block in digital systems used for event detection, timing synchronization, and triggering operations.

Features
Edge Detection: Identifies rising edges, falling edges, or both on an input signal.
Synchronous Design: Ensures precise detection synchronized with a clock signal.
Configurable Modes: Supports individual modes for rising edge, falling edge, or dual-edge detection.
Compact and Efficient: Optimized for minimal resource usage in hardware implementations.
Inputs and Outputs
Inputs:
Signal (sig): Input signal for edge detection.
Clock (clk): Synchronizes the edge detection process.
Reset (rst): Resets the detector to its initial state.
Outputs:
Edge Detected (edge): High for one clock cycle when an edge is detected.
Design Approach
Signal Sampling:

The input signal is sampled on every clock cycle.
A delayed version of the signal is stored to compare current and previous states.
Edge Detection Logic:

Rising Edge: Detected when the signal transitions from 0 to 1.
Falling Edge: Detected when the signal transitions from 1 to 0.
Dual Edge: Combines rising and falling edge detection for bidirectional transition detection.
Synchronous Output:

The edge output is asserted for one clock cycle to indicate edge detection, ensuring clarity and usability in downstream systems.
