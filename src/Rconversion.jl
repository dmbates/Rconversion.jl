module Rconversion

import DataStructures: OrderedDict

import Base:
    eltype,
    convert,
    isascii,
    names,
    length,
    size,
    getindex,
    setindex!,
    show,
    showerror,
    write

import Base.Iterators: iterate, IteratorSize, IteratorEltype, Pairs, pairs

const libR = "/Library/Frameworks/R.framework/Resources/lib/libR"

include("types.jl")
include("Const.jl")
include("methods.jl")
include("base.jl")
include("default.jl")

function __init__()
    libRlist = filter(contains("libR."), Libc.Libdl.dllist())
    if isone(length(libRlist))
        println(Core.stdout, "Initializing global constant symbols")
        libR = only(libRlist)
        Const.load()
    end
end

export
    Const,
    CharSxp,
    CplxSxp,
    UnknownSxp,
    IntSxp,
    LglSxp,
    NilSxp,
    RealSxp,
    Sxp,
    StrSxp,
    SymSxp,
    VecSxp,
    DimSymbol,
    NilValue,
    RObject,
    getattrib,
    rcopy,
    sexp,
    preserve,
    release,
    protect,
    unprotect,
    setnames!,
    coerceVector,
    isArray,
    isComplex,
    isEnvironment,
    isExpression,
    isFactor,
    isFrame,
    isFree,
    isFunction,
    isInteger,
    isLanguage,
    isList,
    isLogical,
    isSymbol,
    isMatrix,
    isNewList,
    isNull,
    isNumeric,
    isNumber,
    isObject,
    isOrdered,
    isPairList,
    isPrimitive,
    isReal,
    isS4,
    isString,
    isTs,
    isUnordered,
    isUnsorted,
    isUserBinop,
    isValidString,
    isValidStringF,
    isVector,
    isVectorAtomic,
    isVectorizable,
    isVectorList,
    unsafe_matrix,
    unsafe_vec

end
