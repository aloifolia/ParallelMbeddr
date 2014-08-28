Hints for language tryouts in mbeddr:

- in mbeddr, open "implementation" (it should have a leading MPS symbol); this should load the language and solutions
- currently, NamedResources in mbeddr can be globally referenced 
  => mbeddr will always propose all name-matching NamedResources instead of just the one in scope
  => if the wrong one is selected (indicated by an error message), try the next one
- synchronization resources must be added, by pressing ENTER inside the synchronization list of a SyncStatement
  => auto-completion will only suggest the adding of a named resource
- the compability of typedefs with shared resource base types seems to be impaired due to a recent change of mbeddr itself
  => the IDE will at times show incompatible-type error messages for uses of .set and .get, even though the types should be compatible
  
  
  
  
Hints for the generated examples:

- for every scenario implementation, only one optimized and non-optimized version was generated
- in order to use the adjust the configurations, values in multiple generated files need to be changed
  => probably better adjust the solutions directly in mbedddr