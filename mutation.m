#include <stdio.h>
#include <stdlib.h>
#include "objc/runtime.h"
#include "visibility.h"

// This function is exported as a weak symbol to enable GNUstep or some other
// framework to replace it trivially
void WEAK_EXPORT objc_enumerationMutation(id obj)
{
	fprintf(stderr, "Mutation occured during enumeration.");
	abort();
}

