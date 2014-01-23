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
- investigate briefly Scala, Rust, Stackless Python and XC
- find textbook examples that could be coded
- ponder and write down possible syntax that is suitable for examples: MP and SM

### Next step(s)
- investigate existing languages and libraries:

    Erlang
    → http://en.wikipedia.org/wiki/Erlang_(programming_language)
    - uses asynchronous message passing with nothing shared
    - **[DONE](https://github.com/aloifolia/ParallelMbeddr/wiki/Erlang)**

    Scala
    → http://en.wikipedia.org/wiki/Scala_(programming_language)

    Rust 
    - pointers (owned, managed, borrowed):
      → http://words.steveklabnik.com/pointers-in-rust-a-guide
    - shared mutable memory that is provably free of data races:
      → http://winningraceconditions.blogspot.com/2012/09/rust-4-typesafe-shared-mutable-state.html

    Stackless Python
    → http://en.wikipedia.org/wiki/Stackless_Python

    XC
    → http://en.wikipedia.org/wiki/XC_(programming_language)
    - based on Communicating Sequential Processes

    FAUST
    → http://en.wikipedia.org/wiki/FAUST_(programming_language)
    - Realtime functional programming language for signal processing
    - The Faust compiler provides automatic parallelization using either OpenMP or a specific work-stealing scheduler.

    Go
    → http://en.wikipedia.org/wiki/Go_(programming_language)

    Janus
    → http://en.wikipedia.org/wiki/Janus_(programming_language)
    - features distinct "askers" and "tellers" to logical variables, bag channels

    Hume
    → http://en.wikipedia.org/wiki/Hume_(programming_language)
    - functional concurrent lang. for bounded space and time environments
    - automata processes are described by synchronous channels patterns and message passing

    ParaSail
    → http://en.wikipedia.org/wiki/ParaSail_(programming_language)
    - pointer-free
    - data-race-free

    Orc
    → http://en.wikipedia.org/wiki/Orc_(programming_language)
    - a heavily concurrent, nondeterministic language based on Kleene algebra

    AEminium
    → http://aeminium.dei.uc.pt/index.php/AEminium
    - A concurrent-by-default programming language, implemented as an extension to Plaid:
      → http://www.cs.cmu.edu/~aldrich/plaid/
      - A typestate-oriented, gradually typed programming language
      
- summarize approaches/techniques with pros and cons of each
