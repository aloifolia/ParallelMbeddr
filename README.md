ParallelMbeddr
==============

Master's thesis: *An extension of embedded C for parallel programming*

### Current state
basic research, requesting feedback from users

### Timeline
TODO

### Current Tasks
- await answer from users
- create timeline
- investigate briefly Scala, Rust, Stackless Python and XC: DONE
- find textbook examples that could be coded: half DONE (check TUD course for more)
- ponder and write down possible syntax that is suitable for examples: MP and SM
- write 1-3 textbook examples in C
- write 1-3 textbook examples in invented syntax

### Next step(s)
- investigate existing languages and libraries:

    Erlang
    → http://en.wikipedia.org/wiki/Erlang_(programming_language)
    - uses asynchronous message passing with nothing shared
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Erlang)**

    Scala
    → http://en.wikipedia.org/wiki/Scala_(programming_language)
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Scala)**

    Rust 
    - pointers (owned, managed, borrowed):
      → http://words.steveklabnik.com/pointers-in-rust-a-guide
    - shared mutable memory that is provably free of data races:
      → http://winningraceconditions.blogspot.com/2012/09/rust-4-typesafe-shared-mutable-state.html
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Rust)**

    Stackless Python
    → http://en.wikipedia.org/wiki/Stackless_Python
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/StacklessPython)**

    XC
    → http://en.wikipedia.org/wiki/XC_(programming_language)
    - based on Communicating Sequential Processes
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/XC)**

    FAUST
    → http://en.wikipedia.org/wiki/FAUST_(programming_language)
    - Realtime functional programming language for signal processing
    - The Faust compiler provides automatic parallelization using either OpenMP or a specific work-stealing scheduler.
    - **DONE** not of further interest: objective seems to be to merely parallelize SIMD scenarios

    Go
    → http://en.wikipedia.org/wiki/Go_(programming_language)
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Go)**

    Janus
    → http://en.wikipedia.org/wiki/Janus_(programming_language)
    - features distinct "askers" and "tellers" to logical variables, bag channels
    - **DONE** not of further interest since it is a distributed constraint solving language
    - for further information see paper *Actors as a Special Case of Concurrent Constraint Programming*

    Hume
    → http://en.wikipedia.org/wiki/Hume_(programming_language)
    - functional concurrent lang. for bounded space and time environments
    - automata processes are described by synchronous channels patterns and message passing
    - **DONE** not of further interest

    ParaSail
    → http://en.wikipedia.org/wiki/ParaSail_(programming_language)
    - pointer-free
    - data-race-free
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/ParaSail)**

    Orc
    → http://en.wikipedia.org/wiki/Orc_(programming_language)
    - a heavily concurrent, nondeterministic language based on Kleene algebra
    - **DONE** not of further interest (just channels and multiple combinators of parallelly computed results)
    

    AEminium
    → http://aeminium.dei.uc.pt/index.php/AEminium
    - A concurrent-by-default programming language, implemented as an extension to Plaid:
      → http://www.cs.cmu.edu/~aldrich/plaid/
      - A typestate-oriented, gradually typed programming language
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/%C3%86MINIUM)**

    Concurrent C
    → http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.47.850
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Concurrent-C)**
      
- summarize approaches/techniques with pros and cons of each
