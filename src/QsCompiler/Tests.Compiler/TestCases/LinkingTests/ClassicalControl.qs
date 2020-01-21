﻿// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.


namespace SubOps {
    operation SubOp1() : Unit is Adj + Ctl { }
    operation SubOp2() : Unit is Adj + Ctl { }
    operation SubOp3() : Unit is Adj + Ctl { }
}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
            SubOp3();
            let temp = 4;
            using (q = Qubit()) {
                let temp2 = q;
            }
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            for (index in 0 .. 3) {
                let temp = index;
            }

            repeat {
                let success = true;
            } until (success)
            fixup {
                let temp2 = 0;
            }
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            let temp = 2;
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
            return ();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        IfInvalid();
        ElseInvalid();
        BothInvalid();
    }

    operation IfInvalid() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
            SubOp2();
            return ();
        } else {
            SubOp2();
            SubOp3();
        }
    }

    operation ElseInvalid() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
            return ();
        }
    }

    operation BothInvalid() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
            SubOp2();
            return ();
        } else {
            SubOp2();
            SubOp3();
            return ();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
            SubOp3();
        }

        let temp = 0;

        if (r == One) {
            SubOp2();
            SubOp3();
            SubOp1();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = One;

        if (r == One) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
        } elif (r == One) {
            SubOp3();
            SubOp1();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero and r == One) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero or r == One) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    function Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubFunc1();
            SubFunc2();
            SubFunc3();
        }
    }

    function SubFunc1() : Unit { }
    function SubFunc2() : Unit { }
    function SubFunc3() : Unit { }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            mutable temp = 3;
            set temp = 4;
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        mutable temp = 3;
        if (r == Zero) {
            set temp = 4;
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTestMain() : Unit {
        Foo<Int, Double, String>();
    }

    operation Foo<'A, 'B, 'C>() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation Provided() : Unit is Adj {
        body (...) {
            let r = Zero;

            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        adjoint (...) {
            let w = One;

            if (w == One) {
                SubOp2();
                SubOp3();
            }
        }
    }

    operation Self() : Unit is Adj {
        body (...) {
            let r = Zero;

            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        adjoint self;
    }

    operation Invert() : Unit is Adj {
        body (...) {
            let r = Zero;

            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        adjoint invert;
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation Provided() : Unit is Ctl {
        body (...) {
            let r = Zero;

            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled (ctl, ...) {
            let w = One;

            if (w == One) {
                SubOp2();
                SubOp3();
            }
        }
    }

    operation Distribute() : Unit is Ctl {
        body (...) {
            let r = Zero;

            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled distribute;
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation ProvidedBody() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled adjoint (ctl, ...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }
    }

    operation ProvidedAdjoint() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        adjoint (...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        controlled adjoint (ctl, ...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }
    }

    operation ProvidedControlled() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled (ctl, ...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        controlled adjoint (ctl, ...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }
    }

    operation ProvidedAll() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled (ctl, ...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        adjoint (...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }

        controlled adjoint (ctl, ...) {
            let b = One;

            if (b == One) {
                let temp1 = 0;
                let temp2 = 0;
                SubOp3();
            }
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation DistributeBody() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled adjoint distribute;
    }

    operation DistributeAdjoint() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        adjoint (...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        controlled adjoint distribute;
    }

    operation DistributeControlled() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled (ctl, ...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        controlled adjoint distribute;
    }

    operation DistributeAll() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }

        controlled (ctl, ...) {
            let w = One;

            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }

        adjoint (...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }

        controlled adjoint distribute;
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation InvertBody() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        controlled adjoint invert;
    }
    
    operation InvertAdjoint() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        adjoint (...) {
            let w = One;
    
            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }
    
        controlled adjoint invert;
    }
    
    operation InvertControlled() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        controlled (ctl, ...) {
            let w = One;
    
            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }
    
        controlled adjoint invert;
    }
    
    operation InvertAll() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        controlled (ctl, ...) {
            let w = One;
    
            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }
    
        adjoint (...) {
            let y = One;
    
            if (y == One) {
                SubOp2();
                SubOp3();
            }
        }
    
        controlled adjoint invert;
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    operation SelfBody() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        controlled adjoint self;
    }
    
    operation SelfControlled() : Unit is Ctl + Adj {
        body (...) {
            let r = Zero;
    
            if (r == Zero) {
                SubOp1();
                SubOp2();
            }
        }
    
        controlled (ctl, ...) {
            let w = One;
    
            if (w == One) {
                SubOp3();
                SubOp1();
            }
        }
    
        controlled adjoint self;
    }

}