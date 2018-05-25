//  The Missing Apply Function in Swift. Created by Exey Panteleev
//  Based on https://www.drivenbycode.com/the-missing-apply-function-in-swift/

/** Variadic */
func apply<T, U>(fn: (T...) -> U, args: [T]) -> U? {
    typealias FunctionType = ([T]) -> U
    return unsafeBitCast(fn, to: FunctionType.self)(args)
}


/** 1 Argument */
func apply<A, Z>(fn: (A) -> Z, args: [Any]) -> Z? {
    if let a0 = args[0] as? A {
        return fn(a0)
    }
    return nil
}

/** 2 Arguments */
func apply<A, B, Z>(fn2: (A, B) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B
    { return fn2(a0, a1) }
    return nil
}

/** 3 Arguments */
func apply<A, B, C, Z>(fn3: (A, B, C) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C
    { return fn3(a0, a1, a2) }
    return nil
}

/** 4 Arguments */
func apply<A, B, C, D, Z>(fn4: (A, B, C, D) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D
    { return fn4(a0, a1, a2, a3) }
    return nil
}

/** 5 Arguments */
func apply<A, B, C, D, E, Z>(fn5: (A, B, C, D, E) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E
    { return fn5(a0, a1, a2, a3, a4) }
    return nil
}

/** 6 Arguments */
func apply<A, B, C, D, E, F, Z>(fn6: (A, B, C, D, E, F) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F
    { return fn6(a0, a1, a2, a3, a4, a5) }
    return nil
}

/** 7 Arguments */
func apply<A, B, C, D, E, F, G, Z>(fn7: (A, B, C, D, E, F, G) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G
    { return fn7(a0, a1, a2, a3, a4, a5, a6) }
    return nil
}

/** 8 Arguments */
func apply<A, B, C, D, E, F, G, H, Z>(fn8: (A, B, C, D, E, F, G, H) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H
    { return fn8(a0, a1, a2, a3, a4, a5, a6, a7) }
    return nil
}

/** 9 Arguments */
func apply<A, B, C, D, E, F, G, H, I, Z>(fn9: (A, B, C, D, E, F, G, H, I) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I
    { return fn9(a0, a1, a2, a3, a4, a5, a6, a7, a8) }
    return nil
}

/** 10 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, Z>(fn10: (A, B, C, D, E, F, G, H, I, J) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J
    { return fn10(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9) }
    return nil
}

/** 11 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, Z>(fn11: (A, B, C, D, E, F, G, H, I, J, K) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K
    { return fn11(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) }
    return nil
}

/** 12 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, Z>(fn12: (A, B, C, D, E, F, G, H, I, J, K, L) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L
    { return fn12(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) }
    return nil
}

/** 13 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, Z>(fn13: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M
    { return fn13(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) }
    return nil
}

/** 14 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, Z>(fn14: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N
    { return fn14(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13) }
    return nil
}

/** 15 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, Z>(fn15: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O
    { return fn15(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14) }
    return nil
}

/** 16 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Z>(fn16: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O,
        let a15 = args[15] as? P
    { return fn16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15) }
    return nil
}

/** 17 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, Z>(fn17: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O,
        let a15 = args[15] as? P,
        let a16 = args[16] as? Q
    { return fn17(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16) }
    return nil
}

/** 18 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, Z>(fn18: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O,
        let a15 = args[15] as? P,
        let a16 = args[16] as? Q,
        let a17 = args[17] as? R
    { return fn18(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17) }
    return nil
}

/** 19 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, Z>(fn19: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O,
        let a15 = args[15] as? P,
        let a16 = args[16] as? Q,
        let a17 = args[17] as? R,
        let a18 = args[18] as? S
    { return fn19(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18) }
    return nil
}

/** 20 Arguments */
func apply<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, Z>(fn20: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Z, args: [Any]) -> Z? {
    if  let a0 = args[0] as? A,
        let a1 = args[1] as? B,
        let a2 = args[2] as? C,
        let a3 = args[3] as? D,
        let a4 = args[4] as? E,
        let a5 = args[5] as? F,
        let a6 = args[6] as? G,
        let a7 = args[7] as? H,
        let a8 = args[8] as? I,
        let a9 = args[9] as? J,
        let a10 = args[10] as? K,
        let a11 = args[11] as? L,
        let a12 = args[12] as? M,
        let a13 = args[13] as? N,
        let a14 = args[14] as? O,
        let a15 = args[15] as? P,
        let a16 = args[16] as? Q,
        let a17 = args[17] as? R,
        let a18 = args[18] as? S,
        let a19 = args[19] as? T
    { return fn20(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19) }
    return nil
}
